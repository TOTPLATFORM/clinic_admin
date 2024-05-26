// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventRequestImpl _$$EventRequestImplFromJson(Map<String, dynamic> json) =>
    _$EventRequestImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      date: DateTime.parse(json['date'] as String),
      location: json['location'] as String,
      projectId: (json['projectId'] as num).toInt(),
    );

Map<String, dynamic> _$$EventRequestImplToJson(_$EventRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'location': instance.location,
      'projectId': instance.projectId,
    };
