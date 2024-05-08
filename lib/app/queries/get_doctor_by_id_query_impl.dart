import '../contracts/doctor.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/doctor_entity.dart';
import '../../domain/repos/doctor_repo.dart';
import 'package:dartz/dartz.dart';

class GetDoctorByIdQueryImpl implements GetDoctorByIdQuery {
  final DoctorRepo doctorRepo;

  GetDoctorByIdQueryImpl({required this.doctorRepo});
  @override
  Future<Either<Failure, DoctorEntity>> call(String params) {
    return doctorRepo.getDoctorById(
      doctorId: params,
    );
  }
}
