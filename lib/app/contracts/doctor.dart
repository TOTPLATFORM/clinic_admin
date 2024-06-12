import 'dart:async';

import 'package:clinic_admin/domain/entities/get_doctor_by_id_entity.dart';
import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/doctor_entity.dart';
import '../../domain/entities/doctors_entity.dart';
import '../core/base_types/src/base_query.dart';
import '../core/primitives/inputs/add_doctor.dart';

abstract class GetDoctorsQuery
    extends BaseQuery<Future<Either<Failure, DoctorsEntity>>, int> {}

abstract class GetDoctorByIdQuery
    extends BaseQuery<Future<Either<Failure, GetDoctorByIdEntity>>, String> {}

abstract class DeleteDoctorCommand
    extends BaseQuery<Future<Either<Failure, DoctorEntity>>, String> {}

abstract class AddDoctorQuery
    extends BaseQuery<Future<Either<Failure, DoctorEntity>>, AddDoctorInputs> {}
