import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/doctors_entity.dart';
import '../core/base_types/src/base_query.dart';

abstract class SearchDoctorByTextCommand
    extends BaseQuery<Future<Either<Failure, DoctorsEntity>>, String> {}
