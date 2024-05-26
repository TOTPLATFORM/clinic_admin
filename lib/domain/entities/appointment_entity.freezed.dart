// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentEntity _$AppointmentEntityFromJson(Map<String, dynamic> json) {
  return _AppointmentEntity.fromJson(json);
}

/// @nodoc
mixin _$AppointmentEntity {
  Appointment? get value => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  String? get correlationId => throw _privateConstructorUsedError;
  List<String>? get errors => throw _privateConstructorUsedError;
  List<String>? get validationErrors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentEntityCopyWith<AppointmentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentEntityCopyWith<$Res> {
  factory $AppointmentEntityCopyWith(
          AppointmentEntity value, $Res Function(AppointmentEntity) then) =
      _$AppointmentEntityCopyWithImpl<$Res, AppointmentEntity>;
  @useResult
  $Res call(
      {Appointment? value,
      int? status,
      bool? isSuccess,
      String? successMessage,
      String? correlationId,
      List<String>? errors,
      List<String>? validationErrors});

  $AppointmentCopyWith<$Res>? get value;
}

/// @nodoc
class _$AppointmentEntityCopyWithImpl<$Res, $Val extends AppointmentEntity>
    implements $AppointmentEntityCopyWith<$Res> {
  _$AppointmentEntityCopyWithImpl(this._value, this._then);

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
              as Appointment?,
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

  @override
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<$Res>? get value {
    if (_value.value == null) {
      return null;
    }

    return $AppointmentCopyWith<$Res>(_value.value!, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentEntityImplCopyWith<$Res>
    implements $AppointmentEntityCopyWith<$Res> {
  factory _$$AppointmentEntityImplCopyWith(_$AppointmentEntityImpl value,
          $Res Function(_$AppointmentEntityImpl) then) =
      __$$AppointmentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Appointment? value,
      int? status,
      bool? isSuccess,
      String? successMessage,
      String? correlationId,
      List<String>? errors,
      List<String>? validationErrors});

  @override
  $AppointmentCopyWith<$Res>? get value;
}

/// @nodoc
class __$$AppointmentEntityImplCopyWithImpl<$Res>
    extends _$AppointmentEntityCopyWithImpl<$Res, _$AppointmentEntityImpl>
    implements _$$AppointmentEntityImplCopyWith<$Res> {
  __$$AppointmentEntityImplCopyWithImpl(_$AppointmentEntityImpl _value,
      $Res Function(_$AppointmentEntityImpl) _then)
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
    return _then(_$AppointmentEntityImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Appointment?,
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
class _$AppointmentEntityImpl implements _AppointmentEntity {
  _$AppointmentEntityImpl(
      {this.value,
      this.status,
      this.isSuccess,
      this.successMessage,
      this.correlationId,
      final List<String>? errors,
      final List<String>? validationErrors})
      : _errors = errors,
        _validationErrors = validationErrors;

  factory _$AppointmentEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentEntityImplFromJson(json);

  @override
  final Appointment? value;
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
    return 'AppointmentEntity(value: $value, status: $status, isSuccess: $isSuccess, successMessage: $successMessage, correlationId: $correlationId, errors: $errors, validationErrors: $validationErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentEntityImpl &&
            (identical(other.value, value) || other.value == value) &&
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
      value,
      status,
      isSuccess,
      successMessage,
      correlationId,
      const DeepCollectionEquality().hash(_errors),
      const DeepCollectionEquality().hash(_validationErrors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentEntityImplCopyWith<_$AppointmentEntityImpl> get copyWith =>
      __$$AppointmentEntityImplCopyWithImpl<_$AppointmentEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentEntityImplToJson(
      this,
    );
  }
}

abstract class _AppointmentEntity implements AppointmentEntity {
  factory _AppointmentEntity(
      {final Appointment? value,
      final int? status,
      final bool? isSuccess,
      final String? successMessage,
      final String? correlationId,
      final List<String>? errors,
      final List<String>? validationErrors}) = _$AppointmentEntityImpl;

  factory _AppointmentEntity.fromJson(Map<String, dynamic> json) =
      _$AppointmentEntityImpl.fromJson;

  @override
  Appointment? get value;
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
  _$$AppointmentEntityImplCopyWith<_$AppointmentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  int? get id => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get patientName => throw _privateConstructorUsedError;
  String? get patientId => throw _privateConstructorUsedError;
  String? get doctorName => throw _privateConstructorUsedError;
  String? get doctorId => throw _privateConstructorUsedError;
  int? get scheduleId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {int? id,
      String? startTime,
      String? endTime,
      String? day,
      String? patientName,
      String? patientId,
      String? doctorName,
      String? doctorId,
      int? scheduleId});
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? day = freezed,
    Object? patientName = freezed,
    Object? patientId = freezed,
    Object? doctorName = freezed,
    Object? doctorId = freezed,
    Object? scheduleId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      patientName: freezed == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentImplCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentImplCopyWith(
          _$AppointmentImpl value, $Res Function(_$AppointmentImpl) then) =
      __$$AppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? startTime,
      String? endTime,
      String? day,
      String? patientName,
      String? patientId,
      String? doctorName,
      String? doctorId,
      int? scheduleId});
}

/// @nodoc
class __$$AppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$AppointmentImpl>
    implements _$$AppointmentImplCopyWith<$Res> {
  __$$AppointmentImplCopyWithImpl(
      _$AppointmentImpl _value, $Res Function(_$AppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? day = freezed,
    Object? patientName = freezed,
    Object? patientId = freezed,
    Object? doctorName = freezed,
    Object? doctorId = freezed,
    Object? scheduleId = freezed,
  }) {
    return _then(_$AppointmentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      patientName: freezed == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentImpl implements _Appointment {
  _$AppointmentImpl(
      {this.id,
      this.startTime,
      this.endTime,
      this.day,
      this.patientName,
      this.patientId,
      this.doctorName,
      this.doctorId,
      this.scheduleId});

  factory _$AppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentImplFromJson(json);

  @override
  final int? id;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? day;
  @override
  final String? patientName;
  @override
  final String? patientId;
  @override
  final String? doctorName;
  @override
  final String? doctorId;
  @override
  final int? scheduleId;

  @override
  String toString() {
    return 'Appointment(id: $id, startTime: $startTime, endTime: $endTime, day: $day, patientName: $patientName, patientId: $patientId, doctorName: $doctorName, doctorId: $doctorId, scheduleId: $scheduleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, startTime, endTime, day,
      patientName, patientId, doctorName, doctorId, scheduleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      __$$AppointmentImplCopyWithImpl<_$AppointmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentImplToJson(
      this,
    );
  }
}

abstract class _Appointment implements Appointment {
  factory _Appointment(
      {final int? id,
      final String? startTime,
      final String? endTime,
      final String? day,
      final String? patientName,
      final String? patientId,
      final String? doctorName,
      final String? doctorId,
      final int? scheduleId}) = _$AppointmentImpl;

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$AppointmentImpl.fromJson;

  @override
  int? get id;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  String? get day;
  @override
  String? get patientName;
  @override
  String? get patientId;
  @override
  String? get doctorName;
  @override
  String? get doctorId;
  @override
  int? get scheduleId;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
