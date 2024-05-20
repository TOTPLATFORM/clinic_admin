// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgentRequestImpl _$$AgentRequestImplFromJson(Map<String, dynamic> json) =>
    _$AgentRequestImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      gender: json['gender'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      userName: json['userName'] as String,
      password: json['password'] as String,
      projectId: (json['projectId'] as num).toInt(),
    );

Map<String, dynamic> _$$AgentRequestImplToJson(_$AgentRequestImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'phone': instance.phone,
      'email': instance.email,
      'userName': instance.userName,
      'password': instance.password,
      'projectId': instance.projectId,
    };
