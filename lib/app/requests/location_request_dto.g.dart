// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationRequestDtoImpl _$$LocationRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationRequestDtoImpl(
      name: json['name'] as String,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$LocationRequestDtoImplToJson(
        _$LocationRequestDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
    };
