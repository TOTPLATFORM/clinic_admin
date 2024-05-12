part of 'patients_bloc.dart';

@unfreezed
class PatientsState with _$PatientsState {
  factory PatientsState.loading() = _Loading;
  factory PatientsState.success(PatientEntity patientEntity) = _Success;
  factory PatientsState.failure(String message) = _Failure;
}
