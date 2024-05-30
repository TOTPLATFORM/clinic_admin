import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/doctors_entity.dart';
import '../../domain/repos/category_repo.dart';
import '../contracts/category.dart';

class GetDoctorsBySpecialtyQueryImpl extends GetDoctorsBySpecialtyQuery {
  final CategoryRepo categoryRepo;

  GetDoctorsBySpecialtyQueryImpl({required this.categoryRepo});

  @override
  Future<Either<Failure, DoctorsEntity>> call(String params) {
    return categoryRepo.getDoctorsBySpecialty(
      specialtyId: params,
    );
  }
}
