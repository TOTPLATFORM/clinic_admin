import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/doctors_entity.dart';
import '../../domain/repos/doctor_repo.dart';
import '../contracts/doctor.dart';

class GetDoctorsQueryImpl implements GetDoctorsQuery {
  final DoctorRepo doctorRepo;

  GetDoctorsQueryImpl({required this.doctorRepo});
  @override
  Future<Either<Failure, DoctorsEntity>> call(int params) {
    return doctorRepo.getAllDoctors(index: params);
  }
}
