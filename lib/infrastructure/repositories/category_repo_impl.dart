import 'package:clinic_admin/domain/entities/get_doctors_by_category_entity.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/category_entity.dart';
import '../../domain/entities/doctors_entity.dart';
import '../../domain/repos/category_repo.dart';
import '../data_source/abstractions/category_data_source.dart';
import 'package:dartz/dartz.dart';

class CategoryRepoImpl implements CategoryRepo {
  final CategoryDataSource categoryDataSource;

  CategoryRepoImpl({
    required this.categoryDataSource,
  });
  @override
  Future<Either<Failure, CategoryEntity>> getAllCategory() async {
    try {
      final res = await categoryDataSource.getAllCategory();
      return Right(
        CategoryEntity.fromJson(res),
      );
    } catch (e) {
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, GetDoctorsByCategoryEntity>> getDoctorsBySpecialty(
      {required String specialtyId}) async {
    try {
      final res = await categoryDataSource.getDoctorsBySpecialty(
          specialtyId: specialtyId);
      return Right(
        GetDoctorsByCategoryEntity.fromJson(res),
      );
    } catch (e) {
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
