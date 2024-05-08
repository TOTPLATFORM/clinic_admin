import '../../core/network/failure.dart';
import '../entities/category_entity.dart';
import '../entities/doctors_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CategoryRepo {
  Future<Either<Failure, CategoryEntity>> getAllCategory();
  Future<Either<Failure, DoctorsEntity>> getDoctorsBySpecialty(
      {required String specialtyId});
}
