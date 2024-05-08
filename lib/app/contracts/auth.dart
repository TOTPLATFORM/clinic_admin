import '../core/base_types/src/base_query.dart';
import '../core/primitives/inputs/login_input.dart';
import '../core/primitives/inputs/register_input.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/login_entity.dart';
import 'package:dartz/dartz.dart';

abstract class LoginQuery
    extends BaseQuery<Future<Either<Failure, LoginEntity>>, LoginInput> {}

abstract class RegisterQuery
    extends BaseQuery<Future<Either<Failure, LoginEntity>>, RegisterInput> {}
