// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_add_client_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputAddOrUpdateClientRequestImpl
    _$$InputAddOrUpdateClientRequestImplFromJson(Map<String, dynamic> json) =>
        _$InputAddOrUpdateClientRequestImpl(
          firstName: json['firstName'] as String?,
          lastName: json['lastName'] as String?,
          dateOfBirth: json['dateOfBirth'] as String?,
          gender: json['gender'] as String?,
          phone: json['phone'] as String?,
          email: json['email'] as String?,
          userName: json['userName'] as String?,
          password: json['password'] as String?,
          budget: (json['budget'] as num?)?.toInt(),
          preferences: json['preferences'] as String?,
        );

Map<String, dynamic> _$$InputAddOrUpdateClientRequestImplToJson(
        _$InputAddOrUpdateClientRequestImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'phone': instance.phone,
      'email': instance.email,
      'userName': instance.userName,
      'password': instance.password,
      'budget': instance.budget,
      'preferences': instance.preferences,
    };
