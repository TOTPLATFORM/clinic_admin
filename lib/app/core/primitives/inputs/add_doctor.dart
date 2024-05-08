import 'package:equatable/equatable.dart';

class AddDoctorInputs with EquatableMixin {
  final String password;
  final int specializationId;
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String phone;
  final String? gender;
  final String? dateOfBirth;

  AddDoctorInputs(
      {required this.password,
      required this.specializationId,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.email,
      required this.phone,
       this.gender,
       this.dateOfBirth});

  @override
  List<Object?> get props => [
        password,
        specializationId,
        firstName,
        lastName,
        username,
        email,
        phone,
        gender,
        dateOfBirth,
      ];
}
