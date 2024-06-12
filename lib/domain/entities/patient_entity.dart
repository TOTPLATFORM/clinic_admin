import 'package:equatable/equatable.dart';

class PatientEntity with EquatableMixin {
  String? id;
  String? patientFirstName;
  String? patientLastName;
  String? patientEmail;
  String? patientPhoneNumber;

  PatientEntity({
    this.id,
    this.patientFirstName,
    this.patientLastName,
    this.patientEmail,
    this.patientPhoneNumber,
  });

  @override
  List<Object?> get props =>
      [id, patientFirstName, patientLastName, patientEmail, patientPhoneNumber];

  PatientEntity copyWith({
    String? id,
    String? patientFirstName,
    String? patientLastName,
    String? patientEmail,
    String? patientPhoneNumber,
  }) {
    return PatientEntity(
      id: id ?? this.id,
      patientFirstName: patientFirstName ?? this.patientFirstName,
      patientLastName: patientLastName ?? this.patientLastName,
      patientEmail: patientEmail ?? this.patientEmail,
      patientPhoneNumber: patientPhoneNumber ?? this.patientPhoneNumber,
    );
  }

  factory PatientEntity.fromJson(Map<String, dynamic> json) {
    return PatientEntity(
      id: json['id'] as String?,
      patientFirstName: json['patientFirstName'] as String?,
      patientLastName: json['patientLastName'] as String?,
      patientEmail: json['patientEmail'] as String?,
      patientPhoneNumber: json['patientPhoneNumber'] as String?,
    );
  }
}
