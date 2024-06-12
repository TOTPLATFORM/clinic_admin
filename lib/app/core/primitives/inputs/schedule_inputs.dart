import 'package:equatable/equatable.dart';

class ScheduleInputs extends Equatable {
  final String doctorId;
  final int dayOfWeek;

  const ScheduleInputs({required this.doctorId, required this.dayOfWeek});

  @override
  List<Object> get props => [doctorId, dayOfWeek];
}
