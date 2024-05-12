// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientEntity _$PatientEntityFromJson(Map<String, dynamic> json) {
  return _PatientEntity.fromJson(json);
}

/// @nodoc
mixin _$PatientEntity {
  List<Patient>? get value => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  String? get correlationId => throw _privateConstructorUsedError;
  List<dynamic>? get errors => throw _privateConstructorUsedError;
  List<dynamic>? get validationErrors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientEntityCopyWith<PatientEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientEntityCopyWith<$Res> {
  factory $PatientEntityCopyWith(
          PatientEntity value, $Res Function(PatientEntity) then) =
      _$PatientEntityCopyWithImpl<$Res, PatientEntity>;
  @useResult
  $Res call(
      {List<Patient>? value,
      int? status,
      bool? isSuccess,
      String? successMessage,
      String? correlationId,
      List<dynamic>? errors,
      List<dynamic>? validationErrors});
}

/// @nodoc
class _$PatientEntityCopyWithImpl<$Res, $Val extends PatientEntity>
    implements $PatientEntityCopyWith<$Res> {
  _$PatientEntityCopyWithImpl(this._value, this._then);

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
              as List<Patient>?,
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
              as List<dynamic>?,
      validationErrors: freezed == validationErrors
          ? _value.validationErrors
          : validationErrors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientEntityImplCopyWith<$Res>
    implements $PatientEntityCopyWith<$Res> {
  factory _$$PatientEntityImplCopyWith(
          _$PatientEntityImpl value, $Res Function(_$PatientEntityImpl) then) =
      __$$PatientEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Patient>? value,
      int? status,
      bool? isSuccess,
      String? successMessage,
      String? correlationId,
      List<dynamic>? errors,
      List<dynamic>? validationErrors});
}

/// @nodoc
class __$$PatientEntityImplCopyWithImpl<$Res>
    extends _$PatientEntityCopyWithImpl<$Res, _$PatientEntityImpl>
    implements _$$PatientEntityImplCopyWith<$Res> {
  __$$PatientEntityImplCopyWithImpl(
      _$PatientEntityImpl _value, $Res Function(_$PatientEntityImpl) _then)
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
    return _then(_$PatientEntityImpl(
      value: freezed == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<Patient>?,
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
              as List<dynamic>?,
      validationErrors: freezed == validationErrors
          ? _value._validationErrors
          : validationErrors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientEntityImpl implements _PatientEntity {
  _$PatientEntityImpl(
      {final List<Patient>? value,
      this.status,
      this.isSuccess,
      this.successMessage,
      this.correlationId,
      final List<dynamic>? errors,
      final List<dynamic>? validationErrors})
      : _value = value,
        _errors = errors,
        _validationErrors = validationErrors;

  factory _$PatientEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientEntityImplFromJson(json);

  final List<Patient>? _value;
  @override
  List<Patient>? get value {
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
  final List<dynamic>? _errors;
  @override
  List<dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _validationErrors;
  @override
  List<dynamic>? get validationErrors {
    final value = _validationErrors;
    if (value == null) return null;
    if (_validationErrors is EqualUnmodifiableListView)
      return _validationErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PatientEntity(value: $value, status: $status, isSuccess: $isSuccess, successMessage: $successMessage, correlationId: $correlationId, errors: $errors, validationErrors: $validationErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientEntityImpl &&
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
  _$$PatientEntityImplCopyWith<_$PatientEntityImpl> get copyWith =>
      __$$PatientEntityImplCopyWithImpl<_$PatientEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientEntityImplToJson(
      this,
    );
  }
}

abstract class _PatientEntity implements PatientEntity {
  factory _PatientEntity(
      {final List<Patient>? value,
      final int? status,
      final bool? isSuccess,
      final String? successMessage,
      final String? correlationId,
      final List<dynamic>? errors,
      final List<dynamic>? validationErrors}) = _$PatientEntityImpl;

  factory _PatientEntity.fromJson(Map<String, dynamic> json) =
      _$PatientEntityImpl.fromJson;

  @override
  List<Patient>? get value;
  @override
  int? get status;
  @override
  bool? get isSuccess;
  @override
  String? get successMessage;
  @override
  String? get correlationId;
  @override
  List<dynamic>? get errors;
  @override
  List<dynamic>? get validationErrors;
  @override
  @JsonKey(ignore: true)
  _$$PatientEntityImplCopyWith<_$PatientEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
mixin _$Patient {
  String? get id => throw _privateConstructorUsedError;
  String? get patientFirstName => throw _privateConstructorUsedError;
  String? get patientLastName => throw _privateConstructorUsedError;
  String? get patientEmail => throw _privateConstructorUsedError;
  String? get patientPhoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res, Patient>;
  @useResult
  $Res call(
      {String? id,
      String? patientFirstName,
      String? patientLastName,
      String? patientEmail,
      String? patientPhoneNumber});
}

/// @nodoc
class _$PatientCopyWithImpl<$Res, $Val extends Patient>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? patientFirstName = freezed,
    Object? patientLastName = freezed,
    Object? patientEmail = freezed,
    Object? patientPhoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      patientFirstName: freezed == patientFirstName
          ? _value.patientFirstName
          : patientFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientLastName: freezed == patientLastName
          ? _value.patientLastName
          : patientLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientEmail: freezed == patientEmail
          ? _value.patientEmail
          : patientEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      patientPhoneNumber: freezed == patientPhoneNumber
          ? _value.patientPhoneNumber
          : patientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientImplCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$$PatientImplCopyWith(
          _$PatientImpl value, $Res Function(_$PatientImpl) then) =
      __$$PatientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? patientFirstName,
      String? patientLastName,
      String? patientEmail,
      String? patientPhoneNumber});
}

/// @nodoc
class __$$PatientImplCopyWithImpl<$Res>
    extends _$PatientCopyWithImpl<$Res, _$PatientImpl>
    implements _$$PatientImplCopyWith<$Res> {
  __$$PatientImplCopyWithImpl(
      _$PatientImpl _value, $Res Function(_$PatientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? patientFirstName = freezed,
    Object? patientLastName = freezed,
    Object? patientEmail = freezed,
    Object? patientPhoneNumber = freezed,
  }) {
    return _then(_$PatientImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      patientFirstName: freezed == patientFirstName
          ? _value.patientFirstName
          : patientFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientLastName: freezed == patientLastName
          ? _value.patientLastName
          : patientLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientEmail: freezed == patientEmail
          ? _value.patientEmail
          : patientEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      patientPhoneNumber: freezed == patientPhoneNumber
          ? _value.patientPhoneNumber
          : patientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientImpl implements _Patient {
  _$PatientImpl(
      {this.id,
      this.patientFirstName,
      this.patientLastName,
      this.patientEmail,
      this.patientPhoneNumber});

  factory _$PatientImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientImplFromJson(json);

  @override
  final String? id;
  @override
  final String? patientFirstName;
  @override
  final String? patientLastName;
  @override
  final String? patientEmail;
  @override
  final String? patientPhoneNumber;

  @override
  String toString() {
    return 'Patient(id: $id, patientFirstName: $patientFirstName, patientLastName: $patientLastName, patientEmail: $patientEmail, patientPhoneNumber: $patientPhoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.patientFirstName, patientFirstName) ||
                other.patientFirstName == patientFirstName) &&
            (identical(other.patientLastName, patientLastName) ||
                other.patientLastName == patientLastName) &&
            (identical(other.patientEmail, patientEmail) ||
                other.patientEmail == patientEmail) &&
            (identical(other.patientPhoneNumber, patientPhoneNumber) ||
                other.patientPhoneNumber == patientPhoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, patientFirstName,
      patientLastName, patientEmail, patientPhoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      __$$PatientImplCopyWithImpl<_$PatientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientImplToJson(
      this,
    );
  }
}

abstract class _Patient implements Patient {
  factory _Patient(
      {final String? id,
      final String? patientFirstName,
      final String? patientLastName,
      final String? patientEmail,
      final String? patientPhoneNumber}) = _$PatientImpl;

  factory _Patient.fromJson(Map<String, dynamic> json) = _$PatientImpl.fromJson;

  @override
  String? get id;
  @override
  String? get patientFirstName;
  @override
  String? get patientLastName;
  @override
  String? get patientEmail;
  @override
  String? get patientPhoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
