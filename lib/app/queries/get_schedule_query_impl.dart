import '../../core/network/failure.dart';
import '../../domain/entities/schedule_entity.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repos/schedule_repo.dart';
import '../contracts/schedule_contract.dart';

class GetScheduleQueryImpl extends GetDoctorScheduleQuery {
  final ScheduleRepo repo;

  GetScheduleQueryImpl({required this.repo});

  @override
  Future<Either<Failure, List<ScheduleEntity>>> call(String params) {
    return repo.getSchedulesByDoctorId(doctorId: params);
  }
}
