import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../entities/patient_entity.dart';

abstract class PatientsRepo {
  Future<Either<Failure, List<PatientEntity>>> getPatients();
}
