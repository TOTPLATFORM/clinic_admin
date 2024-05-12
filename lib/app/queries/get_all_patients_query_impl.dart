import 'package:clinic_admin/app/core/primitives/inputs/no_params.dart';
import 'package:clinic_admin/core/network/failure.dart';
import 'package:clinic_admin/domain/entities/patient_entity.dart';
import 'package:clinic_admin/domain/repos/patients_repo.dart';
import 'package:dartz/dartz.dart';

import '../contracts/patients.dart';

class GetPatientsQueryImpl implements GetPatientsQuery {
  final PatientsRepo _patientsRepo;

  GetPatientsQueryImpl({required PatientsRepo patientsRepo})
      : _patientsRepo = patientsRepo;
  @override
  Future<Either<Failure, PatientEntity>> call(NoParams params) async {
    return await _patientsRepo.getPatients();
  }
}
