part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.getAllCategory() = _GetAllCategory;
      const factory CategoryEvent.getDoctorsBySpecialityId({required String specialityId}) = _GetDoctorsBySpecialityId;

}