import 'package:clinic_admin/app/requests/time_slot_request.dart';
import 'package:clinic_admin/core/network/failure.dart';
import 'package:clinic_admin/domain/entities/get_all_time_slots_entity.dart';
import 'package:clinic_admin/domain/entities/time_slot_entity.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repos/time_slot_repo.dart';
import '../data_source/abstractions/time_slot_data_source.dart';

class TimeSlotRepoImpl implements TimeSlotRepo {
  final TimeSlotDataSource _timeSlotDataSource;

  TimeSlotRepoImpl({required TimeSlotDataSource timeSlotDataSource})
      : _timeSlotDataSource = timeSlotDataSource;

  @override
  Future<Either<Failure, TimeSlotEntity>> addTimeSlot(
      {required TimeSlotRequest timeSlot}) async {
    try {
      final res = await _timeSlotDataSource.addTimeSlot(timeSlot: timeSlot);

      return Right(TimeSlotEntity.fromJson(res));
    } on Failure catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, TimeSlotEntity>> deleteTimeSlot(
      {required int id}) async {
    try {
      final res =
          await _timeSlotDataSource.deleteTimeSlot(timeSlotId: id.toString());

      return Right(TimeSlotEntity.fromJson(res));
    } on Failure catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetTimeSlotsEntity>> getTimeSlots() async {
    try {
      final res = await _timeSlotDataSource.getTimeSlots();

      return Right(GetTimeSlotsEntity.fromJson(res));
    } on Failure catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
