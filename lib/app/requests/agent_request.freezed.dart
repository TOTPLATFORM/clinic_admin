// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgentRequest _$AgentRequestFromJson(Map<String, dynamic> json) {
  return _AgentRequest.fromJson(json);
}

/// @nodoc
mixin _$AgentRequest {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  int get projectId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentRequestCopyWith<AgentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentRequestCopyWith<$Res> {
  factory $AgentRequestCopyWith(
          AgentRequest value, $Res Function(AgentRequest) then) =
      _$AgentRequestCopyWithImpl<$Res, AgentRequest>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String dateOfBirth,
      String gender,
      String phone,
      String email,
      String userName,
      String password,
      int projectId});
}

/// @nodoc
class _$AgentRequestCopyWithImpl<$Res, $Val extends AgentRequest>
    implements $AgentRequestCopyWith<$Res> {
  _$AgentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? phone = null,
    Object? email = null,
    Object? userName = null,
    Object? password = null,
    Object? projectId = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgentRequestImplCopyWith<$Res>
    implements $AgentRequestCopyWith<$Res> {
  factory _$$AgentRequestImplCopyWith(
          _$AgentRequestImpl value, $Res Function(_$AgentRequestImpl) then) =
      __$$AgentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String dateOfBirth,
      String gender,
      String phone,
      String email,
      String userName,
      String password,
      int projectId});
}

/// @nodoc
class __$$AgentRequestImplCopyWithImpl<$Res>
    extends _$AgentRequestCopyWithImpl<$Res, _$AgentRequestImpl>
    implements _$$AgentRequestImplCopyWith<$Res> {
  __$$AgentRequestImplCopyWithImpl(
      _$AgentRequestImpl _value, $Res Function(_$AgentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? phone = null,
    Object? email = null,
    Object? userName = null,
    Object? password = null,
    Object? projectId = null,
  }) {
    return _then(_$AgentRequestImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentRequestImpl implements _AgentRequest {
  const _$AgentRequestImpl(
      {required this.firstName,
      required this.lastName,
      required this.dateOfBirth,
      required this.gender,
      required this.phone,
      required this.email,
      required this.userName,
      required this.password,
      required this.projectId});

  factory _$AgentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentRequestImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String dateOfBirth;
  @override
  final String gender;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String userName;
  @override
  final String password;
  @override
  final int projectId;

  @override
  String toString() {
    return 'AgentRequest(firstName: $firstName, lastName: $lastName, dateOfBirth: $dateOfBirth, gender: $gender, phone: $phone, email: $email, userName: $userName, password: $password, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentRequestImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, dateOfBirth,
      gender, phone, email, userName, password, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentRequestImplCopyWith<_$AgentRequestImpl> get copyWith =>
      __$$AgentRequestImplCopyWithImpl<_$AgentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentRequestImplToJson(
      this,
    );
  }
}

abstract class _AgentRequest implements AgentRequest {
  const factory _AgentRequest(
      {required final String firstName,
      required final String lastName,
      required final String dateOfBirth,
      required final String gender,
      required final String phone,
      required final String email,
      required final String userName,
      required final String password,
      required final int projectId}) = _$AgentRequestImpl;

  factory _AgentRequest.fromJson(Map<String, dynamic> json) =
      _$AgentRequestImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get dateOfBirth;
  @override
  String get gender;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get userName;
  @override
  String get password;
  @override
  int get projectId;
  @override
  @JsonKey(ignore: true)
  _$$AgentRequestImplCopyWith<_$AgentRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
