part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.success({
    CategoryEntity? categories,
    DoctorsEntity? doctors,
  }) = _Success;
  const factory CategoryState.failure({
    required String message,
  }) = _Failure;
}
