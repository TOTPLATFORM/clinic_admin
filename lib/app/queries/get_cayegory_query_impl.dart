import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/category_entity.dart';
import '../../domain/repos/category_repo.dart';
import '../contracts/category.dart';
import '../core/primitives/inpust/no_params.dart';

class GetCategoryQueryImpl implements GetCategoryQuery {
  final CategoryRepo categoryRepo;

  GetCategoryQueryImpl({required this.categoryRepo});
  @override
  Future<Either<Failure, CategoryEntity>> call(NoParams params) {
    return categoryRepo.getAllCategory();
  }
}
