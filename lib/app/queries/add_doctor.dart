import 'package:clinic_admin/app/core/primitives/inputs/add_doctor.dart';

import '../../domain/entities/doctor_entity.dart';
import '../contracts/doctor.dart';
import '../../core/network/failure.dart';
import '../../domain/repos/doctor_repo.dart';
import 'package:dartz/dartz.dart';

class AddDoctorImpl implements AddDoctor {
  final DoctorRepo doctorRepo;

  AddDoctorImpl({required this.doctorRepo});
  @override
  Future<Either<Failure, DoctorEntity>> call(AddDoctorInputs inputs) {
    return doctorRepo.addDoctor(
        doctorData: Doctor(
          dateOfBirth: inputs.dateOfBirth,
          doctorEmail: inputs.email,
          doctorFirstName: inputs.firstName,
          doctorLastName: inputs.lastName,
          doctorPhoneNumber: inputs.phone,
          gender: inputs.gender,
          userName: inputs.username,
        ),
        specializationId: inputs.specializationId,
        password: inputs.password);
  }
}
