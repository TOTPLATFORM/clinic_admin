import '../../core/network/failure.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/repos/update_personal_data_repo.dart';
import '../data_source/abstractions/update_personal_data_source.dart';
import 'package:dartz/dartz.dart';

class UpdataPesonalDataRepoImpl implements UpdatePersonalDataRepo {
  final UpdatePersonalDataSource updatePersonalDataSource;

  UpdataPesonalDataRepoImpl({
    required this.updatePersonalDataSource,
  });
  @override
  Future<Either<Failure, LoginEntity>> updatePresonalData({
    required String firstName,
    required String lastName,
    required String username,
    required String email,
    required String phone,
    required String password,
    required String patientId,
  }) async {
    try {
      final response = await updatePersonalDataSource.updatePersonalData(
        firstName: firstName,
        lastName: lastName,
        username: username,
        email: email,
        phone: phone,
        password: password,
        patientId: patientId,
      );
      return Right(
        LoginEntity.fromJson(response),
      );
    } catch (e) {
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
