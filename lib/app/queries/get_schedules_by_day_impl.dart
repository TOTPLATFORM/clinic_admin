import '../contracts/schedule_contract.dart';
import '../core/primitives/inputs/schedule_inputs.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/schedule_entity.dart';
import '../../domain/repos/schedule_repo.dart';
import 'package:dartz/dartz.dart';

class GetSchedulesByDayQueryImpl implements GetSchedulesByDayQuery {
  final ScheduleRepo scheduleRepo;

  GetSchedulesByDayQueryImpl({required this.scheduleRepo});
  @override
  Future<Either<Failure, List<ScheduleEntity>>> call(ScheduleInputs params) {
    return scheduleRepo.getSchedulesByDay(
      doctorId: params.doctorId,
      dayOfWeek: params.dayOfWeek,
    );
  }
}
