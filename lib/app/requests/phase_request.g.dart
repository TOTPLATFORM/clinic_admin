// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhaseRequestImpl _$$PhaseRequestImplFromJson(Map<String, dynamic> json) =>
    _$PhaseRequestImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      projectId: (json['projectId'] as num).toInt(),
    );

Map<String, dynamic> _$$PhaseRequestImplToJson(_$PhaseRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'projectId': instance.projectId,
    };
