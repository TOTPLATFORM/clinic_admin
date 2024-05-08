import '../contracts/doctor.dart';
import '../core/primitives/inputs/no_params.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/doctors_entity.dart';
import '../../domain/repos/doctor_repo.dart';
import 'package:dartz/dartz.dart';

class GetDoctorsQueryImpl implements GetDoctorsQuery {
  final DoctorRepo doctorRepo;

  GetDoctorsQueryImpl({required this.doctorRepo});
  @override
  Future<Either<Failure, DoctorsEntity>> call(NoParams params) {
    return doctorRepo.getAllDoctors();
  }
}
