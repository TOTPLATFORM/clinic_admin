import 'package:clinic_admin/core/dependency_injection/di_container.dart';
import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../core/utils/shared_keys.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/repos/auth_repo.dart';
import '../data_source/abstractions/auth_data_source.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthDataSource authDataSource;

  AuthRepoImpl({
    required this.authDataSource,
  });

  @override
  Future<Either<Failure, LoginEntity>> login({
    required String username,
    required String password,
  }) async {
    try {
      final response =
          await authDataSource.login(username: username, password: password);
      if ((response['value']['roles'] as List).first == "Admin") {
        preferences.setString(
            SharedKeys.accessToken, response['value']['token']);
        return Right(LoginEntity.fromJson(response));
      } else {
        return const Left(BadRequestFailure("User not authoriezd"));
      }
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, LoginEntity>> register(
      {required String firstName,
      required String lastName,
      required String username,
      required String email,
      required String phone,
      required String password}) async {
    try {
      final response = await authDataSource.register(
        firstName: firstName,
        lastName: lastName,
        username: username,
        email: email,
        phone: phone,
        password: password,
      );
      return Right(
        LoginEntity.fromJson(response),
      );
    } catch (e) {
      return Left(
        ServerFailure(e.toString()),
      );
    }
  }
}
