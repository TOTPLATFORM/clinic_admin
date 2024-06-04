part of 'doctor_bloc.dart';

@freezed
class DoctorState with _$DoctorState {
  const factory DoctorState.initial() = _Initial;
  const factory DoctorState.loading() = _Loading;
  const factory DoctorState.success({
    List<Doctor>? doctors,
    DoctorEntity? doctor,
    @Default(false) bool addDoctor,
    @Default(false) bool deleteDoctor,
    @Default(false) bool isLoading,
    bool? hasNextPage,
  }) = _Success;
  const factory DoctorState.failure({
    required String message,
  }) = _Failure;
}
