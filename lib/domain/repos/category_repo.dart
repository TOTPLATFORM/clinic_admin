import 'package:clinic_admin/domain/entities/get_doctors_by_category_entity.dart';
import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../entities/category_entity.dart';
import '../entities/doctors_entity.dart';

abstract class CategoryRepo {
  Future<Either<Failure, CategoryEntity>> getAllCategory();
  Future<Either<Failure, GetDoctorsByCategoryEntity>> getDoctorsBySpecialty(
      {required String specialtyId});
}
