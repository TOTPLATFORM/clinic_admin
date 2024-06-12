part of 'doctor_bloc.dart';

@unfreezed
class DoctorState with _$DoctorState {
   factory DoctorState.initial() = _Initial;
   factory DoctorState.loading() = _Loading;
   factory DoctorState.success({
    List<Doctor>? doctors,
    DoctorEntity? doctor,
    GetDoctorByIdEntity? doctorDetails,
    @Default(false) bool addDoctor,
    @Default(false) bool deleteDoctor,
    @Default(false) bool isLoading,
    bool? hasNextPage,
  }) = _Success;
   factory DoctorState.failure({
    required String message,
  }) = _Failure;
}
