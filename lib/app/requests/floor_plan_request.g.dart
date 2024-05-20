// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor_plan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FloorPlanRequestImpl _$$FloorPlanRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FloorPlanRequestImpl(
      imageUrl: json['imageUrl'] as String?,
      caption: json['caption'] as String?,
      propertyId: (json['propertyId'] as num).toInt(),
    );

Map<String, dynamic> _$$FloorPlanRequestImplToJson(
        _$FloorPlanRequestImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'caption': instance.caption,
      'propertyId': instance.propertyId,
    };
