import '../contracts/update_personal_data.dart';
import '../core/primitives/inputs/register_input.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/repos/update_personal_data_repo.dart';
import 'package:dartz/dartz.dart';

class UpdatePersonalDataQueryImpl implements UpdatePersonalDataQuery {
  final UpdatePersonalDataRepo _updatePersonalDataRepo;

  UpdatePersonalDataQueryImpl(
      {required UpdatePersonalDataRepo updatePersonalDataRepo})
      : _updatePersonalDataRepo = updatePersonalDataRepo;
  @override
  Future<Either<Failure, LoginEntity>> call(RegisterInput params) {
    return _updatePersonalDataRepo.updatePresonalData(
        email: params.email,
        firstName: params.firstName,
        lastName: params.lastName,
        phone: params.phone,
        username: params.username,
        password: params.password,
        patientId: params.patientId ?? "");
  }
}
