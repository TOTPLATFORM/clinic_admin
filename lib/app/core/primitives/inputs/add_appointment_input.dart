import 'package:equatable/equatable.dart';

class AddAppointmentInput extends Equatable {
  final String doctorId;
  final String patientId;
  final int scheduleId;
  final String? appointmentId;

  const AddAppointmentInput({
    required this.doctorId,
    required this.scheduleId,
    required this.patientId,
    this.appointmentId,
  });

  @override
  List<Object?> get props => [doctorId, scheduleId, patientId, appointmentId];
}
