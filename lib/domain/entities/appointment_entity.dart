import 'package:equatable/equatable.dart';

class AppointmentEntity with EquatableMixin {
  int id;
  String startTime;
  String endTime;
  String date;
  String status;
  String description;
  String patientName;
  String patientId;
  String doctorName;
  String doctorId;
  int scheduleId;

  AppointmentEntity({
    required this.id,
    required this.startTime,
    required this.endTime,
    required this.date,
    required this.status,
    required this.description,
    required this.patientName,
    required this.patientId,
    required this.doctorName,
    required this.doctorId,
    required this.scheduleId,
  });

  @override
  List<Object?> get props => [
        id,
        startTime,
        endTime,
        date,
        status,
        description,
        patientName,
        patientId,
        doctorName,
        doctorId,
        scheduleId
      ];

  AppointmentEntity copyWith({
    int? id,
    String? startTime,
    String? endTime,
    String? date,
    String? status,
    String? description,
    String? patientName,
    String? patientId,
    String? doctorName,
    String? doctorId,
    int? scheduleId,
  }) {
    return AppointmentEntity(
      id: id ?? this.id,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      date: date ?? this.date,
      status: status ?? this.status,
      description: description ?? this.description,
      patientName: patientName ?? this.patientName,
      patientId: patientId ?? this.patientId,
      doctorName: doctorName ?? this.doctorName,
      doctorId: doctorId ?? this.doctorId,
      scheduleId: scheduleId ?? this.scheduleId,
    );
  }

  factory AppointmentEntity.fromJson(Map<String, dynamic> json) {
    return AppointmentEntity(
      id: json['id'] as int,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      date: json['appointmentDate'] as String,
      status: json['status'] as String,
      description: json['description'] as String,
      patientName: json['patientName'] as String,
      patientId: json['patientId'] as String,
      doctorName: json['doctorName'] as String,
      doctorId: json['doctorId'] as String,
      scheduleId: json['scheduleId'] as int,
    );
  }
}
