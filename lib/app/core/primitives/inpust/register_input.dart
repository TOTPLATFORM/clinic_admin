import 'package:equatable/equatable.dart';

class RegisterInput extends Equatable {
  final String username;
  final String password;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String? patientId;


  const RegisterInput( {
    required this.username,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    this.patientId,
  });

  @override
  List<Object?> get props =>
      [username, password, firstName, lastName, email, phone, patientId];
}
