import '../core/base_types/src/base_query.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/doctors_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SearchDoctorByTextCommand
    extends BaseQuery<Future<Either<Failure, DoctorsEntity>>, String> {}
