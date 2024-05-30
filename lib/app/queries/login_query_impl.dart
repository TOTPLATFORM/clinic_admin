import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/repos/auth_repo.dart';
import '../contracts/auth.dart';
import '../core/primitives/inputs/login_input.dart';

class LoginQueryImpl implements LoginQuery {
  final AuthRepo authRepo;

  LoginQueryImpl({required this.authRepo});
  @override
  Future<Either<Failure, LoginEntity>> call(LoginInput inputs) {
    return authRepo.login(
      username: inputs.username,
      password: inputs.password,
    );
  }
}
