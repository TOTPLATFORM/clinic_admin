import 'package:equatable/equatable.dart';

class AppointmentData with EquatableMixin {
  final String patientId;
  final String doctorId;
  final int day;
  AppointmentData(
      {required this.patientId, required this.doctorId, required this.day});

  @override
  List<Object?> get props => [patientId, doctorId, day];
}

class AppointmentInputs extends Equatable {
  final String patientId;
  final int scheduleId;

  const AppointmentInputs({required this.patientId, required this.scheduleId});

  @override
  List<Object?> get props => [patientId, scheduleId];
}
