// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnitRequestImpl _$$UnitRequestImplFromJson(Map<String, dynamic> json) =>
    _$UnitRequestImpl(
      unitNumber: (json['unitNumber'] as num).toInt(),
      floor: (json['floor'] as num).toInt(),
      size: (json['size'] as num).toDouble(),
      bedrooms: (json['bedrooms'] as num).toInt(),
      bathrooms: (json['bathrooms'] as num).toInt(),
      status: json['status'] as String,
      propertyId: (json['propertyId'] as num).toInt(),
      paymentPlanId: (json['paymentPlanId'] as num).toInt(),
    );

Map<String, dynamic> _$$UnitRequestImplToJson(_$UnitRequestImpl instance) =>
    <String, dynamic>{
      'unitNumber': instance.unitNumber,
      'floor': instance.floor,
      'size': instance.size,
      'bedrooms': instance.bedrooms,
      'bathrooms': instance.bathrooms,
      'status': instance.status,
      'propertyId': instance.propertyId,
      'paymentPlanId': instance.paymentPlanId,
    };
