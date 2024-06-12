part of 'patients_bloc.dart';

@unfreezed
class PatientsState with _$PatientsState {
  factory PatientsState.loading() = _Loading;
  factory PatientsState.success(List<PatientEntity> patients) = _Success;
  factory PatientsState.failure(String message) = _Failure;
}
