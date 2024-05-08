import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_entity.freezed.dart';
part 'generic_entity.g.dart';

@freezed
class GenericEntity with _$GenericEntity {
  factory GenericEntity({
    dynamic value, // Keeping it dynamic since value can be anything or null
    int? status,
    bool? isSuccess,
    String? successMessage,
    String? correlationId,
    List<String>? errors,
    List<String>? validationErrors,
  }) = _GenericEntity;

  factory GenericEntity.fromJson(Map<String, dynamic> json) => _$GenericEntityFromJson(json);
}
