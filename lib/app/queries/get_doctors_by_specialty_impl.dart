import 'package:clinic_admin/domain/entities/get_doctors_by_category_entity.dart';
import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/repos/category_repo.dart';
import '../contracts/category.dart';

class GetDoctorsBySpecialtyQueryImpl extends GetDoctorsBySpecialtyQuery {
  final CategoryRepo categoryRepo;

  GetDoctorsBySpecialtyQueryImpl({required this.categoryRepo});

  @override
  Future<Either<Failure, GetDoctorsByCategoryEntity>> call(String params) {
    return categoryRepo.getDoctorsBySpecialty(
      specialtyId: params,
    );
  }
}
