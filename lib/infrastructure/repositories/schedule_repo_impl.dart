import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/schedule_entity.dart';
import '../../domain/repos/schedule_repo.dart';
import '../data_source/abstractions/schedule_data_source.dart';

class ScheduleRepoImpl implements ScheduleRepo {
  final ScheduleDataSource _scheduleDataSource;

  ScheduleRepoImpl({required ScheduleDataSource scheduleDataSource})
      : _scheduleDataSource = scheduleDataSource;

  @override
  Future<Either<Failure, ScheduleEntity>> getSchedulesByDoctorId(
      {required String doctorId}) async {
    try {
      final response =
          await _scheduleDataSource.getAllByDoctorId(doctorId: doctorId);
      return Right(ScheduleEntity.fromJson(response));
    }on Failure catch (e) {
      return Left(ServerFailure(e.message));
    }  catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
