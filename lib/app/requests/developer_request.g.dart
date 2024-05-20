// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeveloperRequestImpl _$$DeveloperRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DeveloperRequestImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      logoUrl: json['logoUrl'] as String,
      establishedDate: json['establishedDate'] as String,
    );

Map<String, dynamic> _$$DeveloperRequestImplToJson(
        _$DeveloperRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'logoUrl': instance.logoUrl,
      'establishedDate': instance.establishedDate,
    };
