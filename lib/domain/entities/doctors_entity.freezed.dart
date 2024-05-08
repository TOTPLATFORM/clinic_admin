// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctors_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DoctorsEntity _$DoctorsEntityFromJson(Map<String, dynamic> json) {
  return _DoctorsEntity.fromJson(json);
}

/// @nodoc
mixin _$DoctorsEntity {
  List<Doctor>? get value => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  String? get correlationId => throw _privateConstructorUsedError;
  List<String>? get errors => throw _privateConstructorUsedError;
  List<String>? get validationErrors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorsEntityCopyWith<DoctorsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorsEntityCopyWith<$Res> {
  factory $DoctorsEntityCopyWith(
          DoctorsEntity value, $Res Function(DoctorsEntity) then) =
      _$DoctorsEntityCopyWithImpl<$Res, DoctorsEntity>;
  @useResult
  $Res call(
      {List<Doctor>? value,
      int? status,
      bool? isSuccess,
      String? successMessage,
      String? correlationId,
      List<String>? errors,
      List<String>? validationErrors});
}

/// @nodoc
class _$DoctorsEntityCopyWithImpl<$Res, $Val extends DoctorsEntity>
    implements $DoctorsEntityCopyWith<$Res> {
  _$DoctorsEntityCopyWithImpl(this._value, this._then);

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
              as List<Doctor>?,
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
abstract class _$$DoctorsEntityImplCopyWith<$Res>
    implements $DoctorsEntityCopyWith<$Res> {
  factory _$$DoctorsEntityImplCopyWith(
          _$DoctorsEntityImpl value, $Res Function(_$DoctorsEntityImpl) then) =
      __$$DoctorsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Doctor>? value,
      int? status,
      bool? isSuccess,
      String? successMessage,
      String? correlationId,
      List<String>? errors,
      List<String>? validationErrors});
}

/// @nodoc
class __$$DoctorsEntityImplCopyWithImpl<$Res>
    extends _$DoctorsEntityCopyWithImpl<$Res, _$DoctorsEntityImpl>
    implements _$$DoctorsEntityImplCopyWith<$Res> {
  __$$DoctorsEntityImplCopyWithImpl(
      _$DoctorsEntityImpl _value, $Res Function(_$DoctorsEntityImpl) _then)
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
    return _then(_$DoctorsEntityImpl(
      value: freezed == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<Doctor>?,
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
class _$DoctorsEntityImpl implements _DoctorsEntity {
  _$DoctorsEntityImpl(
      {final List<Doctor>? value,
      this.status,
      this.isSuccess,
      this.successMessage,
      this.correlationId,
      final List<String>? errors,
      final List<String>? validationErrors})
      : _value = value,
        _errors = errors,
        _validationErrors = validationErrors;

  factory _$DoctorsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorsEntityImplFromJson(json);

  final List<Doctor>? _value;
  @override
  List<Doctor>? get value {
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
    return 'DoctorsEntity(value: $value, status: $status, isSuccess: $isSuccess, successMessage: $successMessage, correlationId: $correlationId, errors: $errors, validationErrors: $validationErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsEntityImpl &&
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
  _$$DoctorsEntityImplCopyWith<_$DoctorsEntityImpl> get copyWith =>
      __$$DoctorsEntityImplCopyWithImpl<_$DoctorsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorsEntityImplToJson(
      this,
    );
  }
}

abstract class _DoctorsEntity implements DoctorsEntity {
  factory _DoctorsEntity(
      {final List<Doctor>? value,
      final int? status,
      final bool? isSuccess,
      final String? successMessage,
      final String? correlationId,
      final List<String>? errors,
      final List<String>? validationErrors}) = _$DoctorsEntityImpl;

  factory _DoctorsEntity.fromJson(Map<String, dynamic> json) =
      _$DoctorsEntityImpl.fromJson;

  @override
  List<Doctor>? get value;
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
  _$$DoctorsEntityImplCopyWith<_$DoctorsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return _Doctor.fromJson(json);
}

/// @nodoc
mixin _$Doctor {
  String? get id => throw _privateConstructorUsedError;
  String? get doctorEmail => throw _privateConstructorUsedError;
  String? get doctorFirstName => throw _privateConstructorUsedError;
  String? get doctorLastName => throw _privateConstructorUsedError;
  String? get doctorPhoneNumber => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  Specialization? get specialization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorCopyWith<Doctor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorCopyWith<$Res> {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) then) =
      _$DoctorCopyWithImpl<$Res, Doctor>;
  @useResult
  $Res call(
      {String? id,
      String? doctorEmail,
      String? doctorFirstName,
      String? doctorLastName,
      String? doctorPhoneNumber,
      String? userName,
      Specialization? specialization});

  $SpecializationCopyWith<$Res>? get specialization;
}

/// @nodoc
class _$DoctorCopyWithImpl<$Res, $Val extends Doctor>
    implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? doctorEmail = freezed,
    Object? doctorFirstName = freezed,
    Object? doctorLastName = freezed,
    Object? doctorPhoneNumber = freezed,
    Object? userName = freezed,
    Object? specialization = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorEmail: freezed == doctorEmail
          ? _value.doctorEmail
          : doctorEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorFirstName: freezed == doctorFirstName
          ? _value.doctorFirstName
          : doctorFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorLastName: freezed == doctorLastName
          ? _value.doctorLastName
          : doctorLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorPhoneNumber: freezed == doctorPhoneNumber
          ? _value.doctorPhoneNumber
          : doctorPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as Specialization?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpecializationCopyWith<$Res>? get specialization {
    if (_value.specialization == null) {
      return null;
    }

    return $SpecializationCopyWith<$Res>(_value.specialization!, (value) {
      return _then(_value.copyWith(specialization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorImplCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$$DoctorImplCopyWith(
          _$DoctorImpl value, $Res Function(_$DoctorImpl) then) =
      __$$DoctorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? doctorEmail,
      String? doctorFirstName,
      String? doctorLastName,
      String? doctorPhoneNumber,
      String? userName,
      Specialization? specialization});

  @override
  $SpecializationCopyWith<$Res>? get specialization;
}

/// @nodoc
class __$$DoctorImplCopyWithImpl<$Res>
    extends _$DoctorCopyWithImpl<$Res, _$DoctorImpl>
    implements _$$DoctorImplCopyWith<$Res> {
  __$$DoctorImplCopyWithImpl(
      _$DoctorImpl _value, $Res Function(_$DoctorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? doctorEmail = freezed,
    Object? doctorFirstName = freezed,
    Object? doctorLastName = freezed,
    Object? doctorPhoneNumber = freezed,
    Object? userName = freezed,
    Object? specialization = freezed,
  }) {
    return _then(_$DoctorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorEmail: freezed == doctorEmail
          ? _value.doctorEmail
          : doctorEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorFirstName: freezed == doctorFirstName
          ? _value.doctorFirstName
          : doctorFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorLastName: freezed == doctorLastName
          ? _value.doctorLastName
          : doctorLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorPhoneNumber: freezed == doctorPhoneNumber
          ? _value.doctorPhoneNumber
          : doctorPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as Specialization?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorImpl implements _Doctor {
  const _$DoctorImpl(
      {this.id,
      this.doctorEmail,
      this.doctorFirstName,
      this.doctorLastName,
      this.doctorPhoneNumber,
      this.userName,
      this.specialization});

  factory _$DoctorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorImplFromJson(json);

  @override
  final String? id;
  @override
  final String? doctorEmail;
  @override
  final String? doctorFirstName;
  @override
  final String? doctorLastName;
  @override
  final String? doctorPhoneNumber;
  @override
  final String? userName;
  @override
  final Specialization? specialization;

  @override
  String toString() {
    return 'Doctor(id: $id, doctorEmail: $doctorEmail, doctorFirstName: $doctorFirstName, doctorLastName: $doctorLastName, doctorPhoneNumber: $doctorPhoneNumber, userName: $userName, specialization: $specialization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.doctorEmail, doctorEmail) ||
                other.doctorEmail == doctorEmail) &&
            (identical(other.doctorFirstName, doctorFirstName) ||
                other.doctorFirstName == doctorFirstName) &&
            (identical(other.doctorLastName, doctorLastName) ||
                other.doctorLastName == doctorLastName) &&
            (identical(other.doctorPhoneNumber, doctorPhoneNumber) ||
                other.doctorPhoneNumber == doctorPhoneNumber) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, doctorEmail, doctorFirstName,
      doctorLastName, doctorPhoneNumber, userName, specialization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      __$$DoctorImplCopyWithImpl<_$DoctorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorImplToJson(
      this,
    );
  }
}

abstract class _Doctor implements Doctor {
  const factory _Doctor(
      {final String? id,
      final String? doctorEmail,
      final String? doctorFirstName,
      final String? doctorLastName,
      final String? doctorPhoneNumber,
      final String? userName,
      final Specialization? specialization}) = _$DoctorImpl;

  factory _Doctor.fromJson(Map<String, dynamic> json) = _$DoctorImpl.fromJson;

  @override
  String? get id;
  @override
  String? get doctorEmail;
  @override
  String? get doctorFirstName;
  @override
  String? get doctorLastName;
  @override
  String? get doctorPhoneNumber;
  @override
  String? get userName;
  @override
  Specialization? get specialization;
  @override
  @JsonKey(ignore: true)
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Specialization _$SpecializationFromJson(Map<String, dynamic> json) {
  return _Specialization.fromJson(json);
}

/// @nodoc
mixin _$Specialization {
  int? get id => throw _privateConstructorUsedError;
  String? get specializationName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecializationCopyWith<Specialization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationCopyWith<$Res> {
  factory $SpecializationCopyWith(
          Specialization value, $Res Function(Specialization) then) =
      _$SpecializationCopyWithImpl<$Res, Specialization>;
  @useResult
  $Res call({int? id, String? specializationName});
}

/// @nodoc
class _$SpecializationCopyWithImpl<$Res, $Val extends Specialization>
    implements $SpecializationCopyWith<$Res> {
  _$SpecializationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? specializationName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      specializationName: freezed == specializationName
          ? _value.specializationName
          : specializationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecializationImplCopyWith<$Res>
    implements $SpecializationCopyWith<$Res> {
  factory _$$SpecializationImplCopyWith(_$SpecializationImpl value,
          $Res Function(_$SpecializationImpl) then) =
      __$$SpecializationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? specializationName});
}

/// @nodoc
class __$$SpecializationImplCopyWithImpl<$Res>
    extends _$SpecializationCopyWithImpl<$Res, _$SpecializationImpl>
    implements _$$SpecializationImplCopyWith<$Res> {
  __$$SpecializationImplCopyWithImpl(
      _$SpecializationImpl _value, $Res Function(_$SpecializationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? specializationName = freezed,
  }) {
    return _then(_$SpecializationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      specializationName: freezed == specializationName
          ? _value.specializationName
          : specializationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecializationImpl implements _Specialization {
  const _$SpecializationImpl({this.id, this.specializationName});

  factory _$SpecializationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecializationImplFromJson(json);

  @override
  final int? id;
  @override
  final String? specializationName;

  @override
  String toString() {
    return 'Specialization(id: $id, specializationName: $specializationName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.specializationName, specializationName) ||
                other.specializationName == specializationName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, specializationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationImplCopyWith<_$SpecializationImpl> get copyWith =>
      __$$SpecializationImplCopyWithImpl<_$SpecializationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecializationImplToJson(
      this,
    );
  }
}

abstract class _Specialization implements Specialization {
  const factory _Specialization(
      {final int? id, final String? specializationName}) = _$SpecializationImpl;

  factory _Specialization.fromJson(Map<String, dynamic> json) =
      _$SpecializationImpl.fromJson;

  @override
  int? get id;
  @override
  String? get specializationName;
  @override
  @JsonKey(ignore: true)
  _$$SpecializationImplCopyWith<_$SpecializationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
