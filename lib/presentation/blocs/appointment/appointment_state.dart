part of 'appointment_bloc.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState.loading() = _Loading;

  const factory AppointmentState.success(
      {required List<AppointmentEntity> appointments,
      @Default(false) bool isDeleted,@Default(false) bool isAdded}) = _Success;
  const factory AppointmentState.failed({required String message}) = _Failed;
}
