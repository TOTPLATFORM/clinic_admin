import 'package:clinic_admin/domain/entities/patient_entity.dart';
import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../core/base_types/index.dart';
import '../core/primitives/inputs/no_params.dart';

abstract class GetPatientsQuery
    extends BaseQuery<Future<Either<Failure, PatientEntity>>, NoParams> {}
