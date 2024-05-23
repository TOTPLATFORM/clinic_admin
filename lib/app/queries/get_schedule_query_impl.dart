import 'package:clinic_admin/core/network/failure.dart';
import 'package:clinic_admin/domain/entities/schedule_entity.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repos/schedule_repo.dart';
import '../contracts/schedule_contract.dart';

class GetScheduleQueryImpl extends GetDoctorScheduleQuery {
  final ScheduleRepo repo;

  GetScheduleQueryImpl({required this.repo});

  @override
  Future<Either<Failure, ScheduleEntity>> call(String params) {
    return repo.getSchedulesByDoctorId(doctorId: params);
  }
}
