part of 'update_personal_data_bloc.dart';

@freezed
class UpdatePersonalDataState with _$UpdatePersonalDataState {
  const factory UpdatePersonalDataState.loading() = _Loading;
  const factory UpdatePersonalDataState.success({
    required LoginEntity loginEntity,
  }) = _Success;
  const factory UpdatePersonalDataState.failure({
    required String message,
  }) = _Failure;
}