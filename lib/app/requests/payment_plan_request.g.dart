// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_plan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentPlanRequestImpl _$$PaymentPlanRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentPlanRequestImpl(
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      terms: json['terms'] as String? ?? '',
      downPaymentPercentage: (json['downPaymentPercentage'] as num).toInt(),
      installmentCount: (json['installmentCount'] as num).toInt(),
      interestRate: (json['interestRate'] as num).toInt(),
    );

Map<String, dynamic> _$$PaymentPlanRequestImplToJson(
        _$PaymentPlanRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'terms': instance.terms,
      'downPaymentPercentage': instance.downPaymentPercentage,
      'installmentCount': instance.installmentCount,
      'interestRate': instance.interestRate,
    };
