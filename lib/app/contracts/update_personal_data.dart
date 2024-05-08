import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/login_entity.dart';
import '../core/base_types/src/base_query.dart';
import '../core/primitives/inpust/register_input.dart';

abstract class UpdatePersonalDataQuery
    extends BaseQuery<Future<Either<Failure, LoginEntity>>, RegisterInput> {}
