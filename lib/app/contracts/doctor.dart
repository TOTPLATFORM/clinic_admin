import '../core/base_types/src/base_query.dart';
import '../core/primitives/inpust/no_params.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/doctor_entity.dart';
import '../../domain/entities/doctors_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetDoctorsQuery
    extends BaseQuery<Future<Either<Failure, DoctorsEntity>>, NoParams> {}

abstract class GetDoctorByIdQuery
    extends BaseQuery<Future<Either<Failure, DoctorEntity>>, String> {}
