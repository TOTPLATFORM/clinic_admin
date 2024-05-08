part of 'update_personal_data_bloc.dart';

@freezed
class UpdatePersonalDataEvent with _$UpdatePersonalDataEvent {
   const factory UpdatePersonalDataEvent.updatePersonalData({
     
      required String username,
      required String password,
      required String firstName,
      required String lastName,
      required String email,
      required String phone,
      required String patientId
    }) = _UpdatePersonalData;
}