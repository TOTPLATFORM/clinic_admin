import 'package:equatable/equatable.dart';

class ScheduleEntity with EquatableMixin {
  int? id;
  int? dayOfWeek;
  String? startTime;
  String? endTime;
  String? doctorId;
  String? doctorName;

  ScheduleEntity({
    this.id,
    this.dayOfWeek,
    this.startTime,
    this.endTime,
    this.doctorId,
    this.doctorName,
  });

  @override
  List<Object?> get props =>
      [id, dayOfWeek, startTime, endTime, doctorId, doctorName];

  ScheduleEntity copyWith({
    int? id,
    int? dayOfWeek,
    String? startTime,
    String? endTime,
    String? doctorId,
    String? doctorName,
  }) {
    return ScheduleEntity(
      id: id ?? this.id,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      doctorId: doctorId ?? this.doctorId,
      doctorName: doctorName ?? this.doctorName,
    );
  }

  factory ScheduleEntity.fromJson(Map<String, dynamic> json) {
    return ScheduleEntity(
      id: json['id'] as int?,
      dayOfWeek: json['dayOfWeek'] as int?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      doctorId: json['doctorId'] as String?,
      doctorName: json['doctorName'] as String?,
    );
  }
}
