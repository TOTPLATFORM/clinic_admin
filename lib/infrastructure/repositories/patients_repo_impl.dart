import '../../core/network/failure.dart';

import '../../domain/entities/patient_entity.dart';
import '../data_source/abstractions/patients_data_source.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repos/patients_repo.dart';

class PatientsRepoImpl implements PatientsRepo {
  final PatientDataSource _patientDataSource;

  PatientsRepoImpl({required PatientDataSource patientDataSource})
      : _patientDataSource = patientDataSource;
  @override
  Future<Either<Failure, List<PatientEntity>>> getPatients() async {
    try {
      final response = await _patientDataSource.getAllPatients();
      return Right((response['value']['data'] as List<dynamic>)
          .map((e) => PatientEntity.fromJson(e))
          .toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
