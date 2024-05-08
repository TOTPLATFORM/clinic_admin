import '../contracts/auth.dart';
import '../core/primitives/inputs/register_input.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';

class RegisterQueryImpl implements RegisterQuery {
  final AuthRepo authRepo;

  RegisterQueryImpl({required this.authRepo});
  @override
  Future<Either<Failure, LoginEntity>> call(RegisterInput inputs) {
    return authRepo.register(
      username: inputs.username,
      password: inputs.password,
      email: inputs.email,
      firstName: inputs.firstName,
      lastName: inputs.lastName,
      phone: inputs.phone,
    );
  }
}
