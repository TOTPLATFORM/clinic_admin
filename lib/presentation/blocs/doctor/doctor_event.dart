part of 'doctor_bloc.dart';

@unfreezed
class DoctorEvent with _$DoctorEvent {
   factory DoctorEvent.getAllDoctors() = _GetAllDoctors;
   factory DoctorEvent.getDoctorById({required String id}) =
      _GetDoctorById;
   factory DoctorEvent.deleteDoctor({required String id}) = _DeleteDoctor;
   factory DoctorEvent.addDoctor({required AddDoctorInputs doctorData}) =
      _AddDoctor;
}
