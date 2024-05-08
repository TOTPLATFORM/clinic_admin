part of 'doctor_bloc.dart';

@freezed
class DoctorEvent with _$DoctorEvent {
  const factory DoctorEvent.getAllDoctors() = _GetAllDoctors;
  const factory DoctorEvent.getDoctorById({required String id,}) =
      _GetDoctorById;
  const factory DoctorEvent.addDoctor({required AddDoctorInputs doctorData,}) =
      _AddDoctor;
}
