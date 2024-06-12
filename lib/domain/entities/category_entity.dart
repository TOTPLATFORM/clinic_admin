import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.freezed.dart';
part 'category_entity.g.dart';

@freezed
class Specialization with _$Specialization {
  factory Specialization({
    int? id,
    String? specializationName,
  }) = _Specialization;

  factory Specialization.fromJson(Map<String, dynamic> json) => _$SpecializationFromJson(json);
}

@freezed
class Value with _$Value {
  factory Value({
    List<Specialization>? data,
    int? totalCount,
    int? pageCount,
    bool? hasNextPage,
    bool? hasPreviousPage,
    int? start,
    int? end,
  }) = _Value;

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}

@freezed
class CategoryEntity with _$CategoryEntity {
  factory CategoryEntity({
    Value? value,
    int? status,
    bool? isSuccess,
    String? successMessage,
    String? correlationId,
    List<String>? errors,
    List<String>? validationErrors,
  }) = _CategoryEntity;

  factory CategoryEntity.fromJson(Map<String, dynamic> json) => _$CategoryEntityFromJson(json);
}
