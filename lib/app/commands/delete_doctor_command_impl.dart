import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/doctor_entity.dart';
import '../../domain/repos/doctor_repo.dart';
import '../contracts/doctor.dart';

class DeleteDoctorCommandImpl extends DeleteDoctorCommand {
  final DoctorRepo repo;

  DeleteDoctorCommandImpl({required this.repo});

  @override
  Future<Either<Failure, DoctorEntity>> call(String params) {
    return repo.deleteDoctor(doctorId: params);
  }
}
