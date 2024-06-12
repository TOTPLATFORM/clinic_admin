import 'package:clinic_admin/domain/entities/get_doctors_by_category_entity.dart';
import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/category_entity.dart';
import '../core/base_types/src/base_query.dart';
import '../core/primitives/inputs/no_params.dart';

abstract class GetCategoryQuery
    extends BaseQuery<Future<Either<Failure, CategoryEntity>>, NoParams> {}

abstract class GetDoctorsBySpecialtyQuery extends BaseQuery<
    Future<Either<Failure, GetDoctorsByCategoryEntity>>, String> {}
