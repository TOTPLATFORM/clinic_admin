// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferRequestImpl _$$OfferRequestImplFromJson(Map<String, dynamic> json) =>
    _$OfferRequestImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      discount: (json['discount'] as num).toInt(),
      unitNumber: (json['unitNumber'] as num).toInt(),
    );

Map<String, dynamic> _$$OfferRequestImplToJson(_$OfferRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'discount': instance.discount,
      'unitNumber': instance.unitNumber,
    };
