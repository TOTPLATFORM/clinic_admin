import 'package:clinic_admin/domain/entities/doctor_entity.dart';
import 'package:clinic_admin/domain/repos/doctor_repo.dart';
import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../contracts/doctor.dart';

class DeleteDoctorCommandImpl extends DeleteDoctorCommand {
  final DoctorRepo repo;

  DeleteDoctorCommandImpl({required this.repo});

  @override
  Future<Either<Failure, DoctorEntity>> call(String params) {
    return repo.deleteDoctor(doctorId: params);
  }
}
