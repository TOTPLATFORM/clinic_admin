import 'package:freezed_annotation/freezed_annotation.dart';

import 'doctor_entity.dart';

part 'doctors_entity.freezed.dart';
part 'doctors_entity.g.dart';

@freezed
class DoctorsEntity with _$DoctorsEntity {
  factory DoctorsEntity({
    Value? value,
    int? status,
    bool? isSuccess,
    String? successMessage,
    String? correlationId,
    List<String>? errors,
    List<String>? validationErrors,
  }) = _DoctorsEntity;

  factory DoctorsEntity.fromJson(Map<String, dynamic> json) =>
      _$DoctorsEntityFromJson(json);
}
@freezed
class Value with _$Value {
  const factory Value({
    List<Doctor>? data,
    int? totalCount,
    int? pageCount,
    bool? hasNextPage,
    bool? hasPreviousPage,
    int? start,
    int? end,
  }) = _Value;

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}