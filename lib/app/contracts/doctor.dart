import 'dart:async';

import 'package:clinic_admin/app/core/primitives/inputs/add_doctor.dart';
import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/doctor_entity.dart';
import '../../domain/entities/doctors_entity.dart';
import '../core/base_types/src/base_query.dart';
import '../core/primitives/inputs/no_params.dart';

abstract class GetDoctorsQuery
    extends BaseQuery<Future<Either<Failure, DoctorsEntity>>, NoParams> {}

abstract class GetDoctorByIdQuery
    extends BaseQuery<Future<Either<Failure, DoctorEntity>>, String> {}

abstract class DeleteDoctorCommand
    extends BaseQuery<Future<Either<Failure, DoctorEntity>>, String> {}

abstract class AddDoctorQuery
    extends BaseQuery<Future<Either<Failure, DoctorEntity>>, AddDoctorInputs> {}
