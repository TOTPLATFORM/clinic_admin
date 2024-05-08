import 'package:equatable/equatable.dart';

class AddAppointmentInput extends Equatable {
  final String doctorId;
  final String patientId;
  final String startTime;
  final String endTime;
  final String date;
  final String? appointmentId;

  const AddAppointmentInput( {
    required this.doctorId,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.patientId,
    this.appointmentId,
  });

  @override
  List<Object?> get props => [
        doctorId,
        date,
        startTime,
        endTime,
        patientId,
        appointmentId
      ];
}
