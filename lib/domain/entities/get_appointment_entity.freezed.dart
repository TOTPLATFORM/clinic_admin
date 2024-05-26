// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_appointment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAppointmentsEntity _$GetAppointmentsEntityFromJson(
    Map<String, dynamic> json) {
  return _GetAppointmentsEntity.fromJson(json);
}

/// @nodoc
mixin _$GetAppointmentsEntity {
  List<Appointment>? get value => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  String? get correlationId => throw _privateConstructorUsedError;
  List<String>? get errors => throw _privateConstructorUsedError;
  List<String>? get validationErrors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAppointmentsEntityCopyWith<GetAppointmentsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAppointmentsEntityCopyWith<$Res> {
  factory $GetAppointmentsEntityCopyWith(GetAppointmentsEntity value,
          $Res Function(GetAppointmentsEntity) then) =
      _$GetAppointmentsEntityCopyWithImpl<$Res, GetAppointmentsEntity>;
  @useResult
  $Res call(
      {List<Appointment>? value,
      int? status,
      bool? isSuccess,
      String? successMessage,
      String? correlationId,
      List<String>? errors,
      List<String>? validationErrors});
}

/// @nodoc
class _$GetAppointmentsEntityCopyWithImpl<$Res,
        $Val extends GetAppointmentsEntity>
    implements $GetAppointmentsEntityCopyWith<$Res> {
  _$GetAppointmentsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? status = freezed,
    Object? isSuccess = freezed,
    Object? successMessage = freezed,
    Object? correlationId = freezed,
    Object? errors = freezed,
    Object? validationErrors = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<Appointment>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      correlationId: freezed == correlationId
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      validationErrors: freezed == validationErrors
          ? _value.validationErrors
          : validationErrors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAppointmentsEntityImplCopyWith<$Res>
    implements $GetAppointmentsEntityCopyWith<$Res> {
  factory _$$GetAppointmentsEntityImplCopyWith(
          _$GetAppointmentsEntityImpl value,
          $Res Function(_$GetAppointmentsEntityImpl) then) =
      __$$GetAppointmentsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Appointment>? value,
      int? status,
      bool? isSuccess,
      String? successMessage,
      String? correlationId,
      List<String>? errors,
      List<String>? validationErrors});
}

/// @nodoc
class __$$GetAppointmentsEntityImplCopyWithImpl<$Res>
    extends _$GetAppointmentsEntityCopyWithImpl<$Res,
        _$GetAppointmentsEntityImpl>
    implements _$$GetAppointmentsEntityImplCopyWith<$Res> {
  __$$GetAppointmentsEntityImplCopyWithImpl(_$GetAppointmentsEntityImpl _value,
      $Res Function(_$GetAppointmentsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? status = freezed,
    Object? isSuccess = freezed,
    Object? successMessage = freezed,
    Object? correlationId = freezed,
    Object? errors = freezed,
    Object? validationErrors = freezed,
  }) {
    return _then(_$GetAppointmentsEntityImpl(
      value: freezed == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<Appointment>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      correlationId: freezed == correlationId
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      validationErrors: freezed == validationErrors
          ? _value._validationErrors
          : validationErrors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAppointmentsEntityImpl implements _GetAppointmentsEntity {
  _$GetAppointmentsEntityImpl(
      {final List<Appointment>? value,
      this.status,
      this.isSuccess,
      this.successMessage,
      this.correlationId,
      final List<String>? errors,
      final List<String>? validationErrors})
      : _value = value,
        _errors = errors,
        _validationErrors = validationErrors;

  factory _$GetAppointmentsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAppointmentsEntityImplFromJson(json);

  final List<Appointment>? _value;
  @override
  List<Appointment>? get value {
    final value = _value;
    if (value == null) return null;
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? status;
  @override
  final bool? isSuccess;
  @override
  final String? successMessage;
  @override
  final String? correlationId;
  final List<String>? _errors;
  @override
  List<String>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _validationErrors;
  @override
  List<String>? get validationErrors {
    final value = _validationErrors;
    if (value == null) return null;
    if (_validationErrors is EqualUnmodifiableListView)
      return _validationErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAppointmentsEntity(value: $value, status: $status, isSuccess: $isSuccess, successMessage: $successMessage, correlationId: $correlationId, errors: $errors, validationErrors: $validationErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAppointmentsEntityImpl &&
            const DeepCollectionEquality().equals(other._value, _value) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.correlationId, correlationId) ||
                other.correlationId == correlationId) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            const DeepCollectionEquality()
                .equals(other._validationErrors, _validationErrors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_value),
      status,
      isSuccess,
      successMessage,
      correlationId,
      const DeepCollectionEquality().hash(_errors),
      const DeepCollectionEquality().hash(_validationErrors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAppointmentsEntityImplCopyWith<_$GetAppointmentsEntityImpl>
      get copyWith => __$$GetAppointmentsEntityImplCopyWithImpl<
          _$GetAppointmentsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAppointmentsEntityImplToJson(
      this,
    );
  }
}

abstract class _GetAppointmentsEntity implements GetAppointmentsEntity {
  factory _GetAppointmentsEntity(
      {final List<Appointment>? value,
      final int? status,
      final bool? isSuccess,
      final String? successMessage,
      final String? correlationId,
      final List<String>? errors,
      final List<String>? validationErrors}) = _$GetAppointmentsEntityImpl;

  factory _GetAppointmentsEntity.fromJson(Map<String, dynamic> json) =
      _$GetAppointmentsEntityImpl.fromJson;

  @override
  List<Appointment>? get value;
  @override
  int? get status;
  @override
  bool? get isSuccess;
  @override
  String? get successMessage;
  @override
  String? get correlationId;
  @override
  List<String>? get errors;
  @override
  List<String>? get validationErrors;
  @override
  @JsonKey(ignore: true)
  _$$GetAppointmentsEntityImplCopyWith<_$GetAppointmentsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
