import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../entities/login_entity.dart';

abstract class UpdatePersonalDataRepo {
  Future<Either<Failure, LoginEntity>> updatePresonalData(
      {required String firstName,
      required String lastName,
      required String username,
      required String email,
      required String phone,
      required String password,
      required String patientId});
}
