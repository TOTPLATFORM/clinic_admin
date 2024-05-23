// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppointmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String scheduleId, String patientId, String doctorId)
        addAppointment,
    required TResult Function(String scheduleId, String patientId,
            String doctorId, String appointmentId)
        updateAppointment,
    required TResult Function() getAppointment,
    required TResult Function(String appointmentId) deleteAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String scheduleId, String patientId, String doctorId)?
        addAppointment,
    TResult? Function(String scheduleId, String patientId, String doctorId,
            String appointmentId)?
        updateAppointment,
    TResult? Function()? getAppointment,
    TResult? Function(String appointmentId)? deleteAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String scheduleId, String patientId, String doctorId)?
        addAppointment,
    TResult Function(String scheduleId, String patientId, String doctorId,
            String appointmentId)?
        updateAppointment,
    TResult Function()? getAppointment,
    TResult Function(String appointmentId)? deleteAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAppointment value) addAppointment,
    required TResult Function(_UpdateAppointment value) updateAppointment,
    required TResult Function(_GetAppointment value) getAppointment,
    required TResult Function(_DeleteAppointment value) deleteAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAppointment value)? addAppointment,
    TResult? Function(_UpdateAppointment value)? updateAppointment,
    TResult? Function(_GetAppointment value)? getAppointment,
    TResult? Function(_DeleteAppointment value)? deleteAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAppointment value)? addAppointment,
    TResult Function(_UpdateAppointment value)? updateAppointment,
    TResult Function(_GetAppointment value)? getAppointment,
    TResult Function(_DeleteAppointment value)? deleteAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentEventCopyWith<$Res> {
  factory $AppointmentEventCopyWith(
          AppointmentEvent value, $Res Function(AppointmentEvent) then) =
      _$AppointmentEventCopyWithImpl<$Res, AppointmentEvent>;
}

/// @nodoc
class _$AppointmentEventCopyWithImpl<$Res, $Val extends AppointmentEvent>
    implements $AppointmentEventCopyWith<$Res> {
  _$AppointmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddAppointmentImplCopyWith<$Res> {
  factory _$$AddAppointmentImplCopyWith(_$AddAppointmentImpl value,
          $Res Function(_$AddAppointmentImpl) then) =
      __$$AddAppointmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String scheduleId, String patientId, String doctorId});
}

/// @nodoc
class __$$AddAppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$AddAppointmentImpl>
    implements _$$AddAppointmentImplCopyWith<$Res> {
  __$$AddAppointmentImplCopyWithImpl(
      _$AddAppointmentImpl _value, $Res Function(_$AddAppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? patientId = null,
    Object? doctorId = null,
  }) {
    return _then(_$AddAppointmentImpl(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddAppointmentImpl implements _AddAppointment {
  const _$AddAppointmentImpl(
      {required this.scheduleId,
      required this.patientId,
      required this.doctorId});

  @override
  final String scheduleId;
  @override
  final String patientId;
  @override
  final String doctorId;

  @override
  String toString() {
    return 'AppointmentEvent.addAppointment(scheduleId: $scheduleId, patientId: $patientId, doctorId: $doctorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAppointmentImpl &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleId, patientId, doctorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAppointmentImplCopyWith<_$AddAppointmentImpl> get copyWith =>
      __$$AddAppointmentImplCopyWithImpl<_$AddAppointmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String scheduleId, String patientId, String doctorId)
        addAppointment,
    required TResult Function(String scheduleId, String patientId,
            String doctorId, String appointmentId)
        updateAppointment,
    required TResult Function() getAppointment,
    required TResult Function(String appointmentId) deleteAppointment,
  }) {
    return addAppointment(scheduleId, patientId, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String scheduleId, String patientId, String doctorId)?
        addAppointment,
    TResult? Function(String scheduleId, String patientId, String doctorId,
            String appointmentId)?
        updateAppointment,
    TResult? Function()? getAppointment,
    TResult? Function(String appointmentId)? deleteAppointment,
  }) {
    return addAppointment?.call(scheduleId, patientId, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String scheduleId, String patientId, String doctorId)?
        addAppointment,
    TResult Function(String scheduleId, String patientId, String doctorId,
            String appointmentId)?
        updateAppointment,
    TResult Function()? getAppointment,
    TResult Function(String appointmentId)? deleteAppointment,
    required TResult orElse(),
  }) {
    if (addAppointment != null) {
      return addAppointment(scheduleId, patientId, doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAppointment value) addAppointment,
    required TResult Function(_UpdateAppointment value) updateAppointment,
    required TResult Function(_GetAppointment value) getAppointment,
    required TResult Function(_DeleteAppointment value) deleteAppointment,
  }) {
    return addAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAppointment value)? addAppointment,
    TResult? Function(_UpdateAppointment value)? updateAppointment,
    TResult? Function(_GetAppointment value)? getAppointment,
    TResult? Function(_DeleteAppointment value)? deleteAppointment,
  }) {
    return addAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAppointment value)? addAppointment,
    TResult Function(_UpdateAppointment value)? updateAppointment,
    TResult Function(_GetAppointment value)? getAppointment,
    TResult Function(_DeleteAppointment value)? deleteAppointment,
    required TResult orElse(),
  }) {
    if (addAppointment != null) {
      return addAppointment(this);
    }
    return orElse();
  }
}

abstract class _AddAppointment implements AppointmentEvent {
  const factory _AddAppointment(
      {required final String scheduleId,
      required final String patientId,
      required final String doctorId}) = _$AddAppointmentImpl;

  String get scheduleId;
  String get patientId;
  String get doctorId;
  @JsonKey(ignore: true)
  _$$AddAppointmentImplCopyWith<_$AddAppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAppointmentImplCopyWith<$Res> {
  factory _$$UpdateAppointmentImplCopyWith(_$UpdateAppointmentImpl value,
          $Res Function(_$UpdateAppointmentImpl) then) =
      __$$UpdateAppointmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String scheduleId,
      String patientId,
      String doctorId,
      String appointmentId});
}

/// @nodoc
class __$$UpdateAppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$UpdateAppointmentImpl>
    implements _$$UpdateAppointmentImplCopyWith<$Res> {
  __$$UpdateAppointmentImplCopyWithImpl(_$UpdateAppointmentImpl _value,
      $Res Function(_$UpdateAppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
    Object? patientId = null,
    Object? doctorId = null,
    Object? appointmentId = null,
  }) {
    return _then(_$UpdateAppointmentImpl(
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateAppointmentImpl implements _UpdateAppointment {
  const _$UpdateAppointmentImpl(
      {required this.scheduleId,
      required this.patientId,
      required this.doctorId,
      required this.appointmentId});

  @override
  final String scheduleId;
  @override
  final String patientId;
  @override
  final String doctorId;
  @override
  final String appointmentId;

  @override
  String toString() {
    return 'AppointmentEvent.updateAppointment(scheduleId: $scheduleId, patientId: $patientId, doctorId: $doctorId, appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppointmentImpl &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, scheduleId, patientId, doctorId, appointmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppointmentImplCopyWith<_$UpdateAppointmentImpl> get copyWith =>
      __$$UpdateAppointmentImplCopyWithImpl<_$UpdateAppointmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String scheduleId, String patientId, String doctorId)
        addAppointment,
    required TResult Function(String scheduleId, String patientId,
            String doctorId, String appointmentId)
        updateAppointment,
    required TResult Function() getAppointment,
    required TResult Function(String appointmentId) deleteAppointment,
  }) {
    return updateAppointment(scheduleId, patientId, doctorId, appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String scheduleId, String patientId, String doctorId)?
        addAppointment,
    TResult? Function(String scheduleId, String patientId, String doctorId,
            String appointmentId)?
        updateAppointment,
    TResult? Function()? getAppointment,
    TResult? Function(String appointmentId)? deleteAppointment,
  }) {
    return updateAppointment?.call(
        scheduleId, patientId, doctorId, appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String scheduleId, String patientId, String doctorId)?
        addAppointment,
    TResult Function(String scheduleId, String patientId, String doctorId,
            String appointmentId)?
        updateAppointment,
    TResult Function()? getAppointment,
    TResult Function(String appointmentId)? deleteAppointment,
    required TResult orElse(),
  }) {
    if (updateAppointment != null) {
      return updateAppointment(scheduleId, patientId, doctorId, appointmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAppointment value) addAppointment,
    required TResult Function(_UpdateAppointment value) updateAppointment,
    required TResult Function(_GetAppointment value) getAppointment,
    required TResult Function(_DeleteAppointment value) deleteAppointment,
  }) {
    return updateAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAppointment value)? addAppointment,
    TResult? Function(_UpdateAppointment value)? updateAppointment,
    TResult? Function(_GetAppointment value)? getAppointment,
    TResult? Function(_DeleteAppointment value)? deleteAppointment,
  }) {
    return updateAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAppointment value)? addAppointment,
    TResult Function(_UpdateAppointment value)? updateAppointment,
    TResult Function(_GetAppointment value)? getAppointment,
    TResult Function(_DeleteAppointment value)? deleteAppointment,
    required TResult orElse(),
  }) {
    if (updateAppointment != null) {
      return updateAppointment(this);
    }
    return orElse();
  }
}

abstract class _UpdateAppointment implements AppointmentEvent {
  const factory _UpdateAppointment(
      {required final String scheduleId,
      required final String patientId,
      required final String doctorId,
      required final String appointmentId}) = _$UpdateAppointmentImpl;

  String get scheduleId;
  String get patientId;
  String get doctorId;
  String get appointmentId;
  @JsonKey(ignore: true)
  _$$UpdateAppointmentImplCopyWith<_$UpdateAppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAppointmentImplCopyWith<$Res> {
  factory _$$GetAppointmentImplCopyWith(_$GetAppointmentImpl value,
          $Res Function(_$GetAppointmentImpl) then) =
      __$$GetAppointmentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$GetAppointmentImpl>
    implements _$$GetAppointmentImplCopyWith<$Res> {
  __$$GetAppointmentImplCopyWithImpl(
      _$GetAppointmentImpl _value, $Res Function(_$GetAppointmentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAppointmentImpl implements _GetAppointment {
  const _$GetAppointmentImpl();

  @override
  String toString() {
    return 'AppointmentEvent.getAppointment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAppointmentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String scheduleId, String patientId, String doctorId)
        addAppointment,
    required TResult Function(String scheduleId, String patientId,
            String doctorId, String appointmentId)
        updateAppointment,
    required TResult Function() getAppointment,
    required TResult Function(String appointmentId) deleteAppointment,
  }) {
    return getAppointment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String scheduleId, String patientId, String doctorId)?
        addAppointment,
    TResult? Function(String scheduleId, String patientId, String doctorId,
            String appointmentId)?
        updateAppointment,
    TResult? Function()? getAppointment,
    TResult? Function(String appointmentId)? deleteAppointment,
  }) {
    return getAppointment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String scheduleId, String patientId, String doctorId)?
        addAppointment,
    TResult Function(String scheduleId, String patientId, String doctorId,
            String appointmentId)?
        updateAppointment,
    TResult Function()? getAppointment,
    TResult Function(String appointmentId)? deleteAppointment,
    required TResult orElse(),
  }) {
    if (getAppointment != null) {
      return getAppointment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAppointment value) addAppointment,
    required TResult Function(_UpdateAppointment value) updateAppointment,
    required TResult Function(_GetAppointment value) getAppointment,
    required TResult Function(_DeleteAppointment value) deleteAppointment,
  }) {
    return getAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAppointment value)? addAppointment,
    TResult? Function(_UpdateAppointment value)? updateAppointment,
    TResult? Function(_GetAppointment value)? getAppointment,
    TResult? Function(_DeleteAppointment value)? deleteAppointment,
  }) {
    return getAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAppointment value)? addAppointment,
    TResult Function(_UpdateAppointment value)? updateAppointment,
    TResult Function(_GetAppointment value)? getAppointment,
    TResult Function(_DeleteAppointment value)? deleteAppointment,
    required TResult orElse(),
  }) {
    if (getAppointment != null) {
      return getAppointment(this);
    }
    return orElse();
  }
}

abstract class _GetAppointment implements AppointmentEvent {
  const factory _GetAppointment() = _$GetAppointmentImpl;
}

/// @nodoc
abstract class _$$DeleteAppointmentImplCopyWith<$Res> {
  factory _$$DeleteAppointmentImplCopyWith(_$DeleteAppointmentImpl value,
          $Res Function(_$DeleteAppointmentImpl) then) =
      __$$DeleteAppointmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String appointmentId});
}

/// @nodoc
class __$$DeleteAppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$DeleteAppointmentImpl>
    implements _$$DeleteAppointmentImplCopyWith<$Res> {
  __$$DeleteAppointmentImplCopyWithImpl(_$DeleteAppointmentImpl _value,
      $Res Function(_$DeleteAppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
  }) {
    return _then(_$DeleteAppointmentImpl(
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAppointmentImpl implements _DeleteAppointment {
  const _$DeleteAppointmentImpl({required this.appointmentId});

  @override
  final String appointmentId;

  @override
  String toString() {
    return 'AppointmentEvent.deleteAppointment(appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAppointmentImpl &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAppointmentImplCopyWith<_$DeleteAppointmentImpl> get copyWith =>
      __$$DeleteAppointmentImplCopyWithImpl<_$DeleteAppointmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String scheduleId, String patientId, String doctorId)
        addAppointment,
    required TResult Function(String scheduleId, String patientId,
            String doctorId, String appointmentId)
        updateAppointment,
    required TResult Function() getAppointment,
    required TResult Function(String appointmentId) deleteAppointment,
  }) {
    return deleteAppointment(appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String scheduleId, String patientId, String doctorId)?
        addAppointment,
    TResult? Function(String scheduleId, String patientId, String doctorId,
            String appointmentId)?
        updateAppointment,
    TResult? Function()? getAppointment,
    TResult? Function(String appointmentId)? deleteAppointment,
  }) {
    return deleteAppointment?.call(appointmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String scheduleId, String patientId, String doctorId)?
        addAppointment,
    TResult Function(String scheduleId, String patientId, String doctorId,
            String appointmentId)?
        updateAppointment,
    TResult Function()? getAppointment,
    TResult Function(String appointmentId)? deleteAppointment,
    required TResult orElse(),
  }) {
    if (deleteAppointment != null) {
      return deleteAppointment(appointmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAppointment value) addAppointment,
    required TResult Function(_UpdateAppointment value) updateAppointment,
    required TResult Function(_GetAppointment value) getAppointment,
    required TResult Function(_DeleteAppointment value) deleteAppointment,
  }) {
    return deleteAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAppointment value)? addAppointment,
    TResult? Function(_UpdateAppointment value)? updateAppointment,
    TResult? Function(_GetAppointment value)? getAppointment,
    TResult? Function(_DeleteAppointment value)? deleteAppointment,
  }) {
    return deleteAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAppointment value)? addAppointment,
    TResult Function(_UpdateAppointment value)? updateAppointment,
    TResult Function(_GetAppointment value)? getAppointment,
    TResult Function(_DeleteAppointment value)? deleteAppointment,
    required TResult orElse(),
  }) {
    if (deleteAppointment != null) {
      return deleteAppointment(this);
    }
    return orElse();
  }
}

abstract class _DeleteAppointment implements AppointmentEvent {
  const factory _DeleteAppointment({required final String appointmentId}) =
      _$DeleteAppointmentImpl;

  String get appointmentId;
  @JsonKey(ignore: true)
  _$$DeleteAppointmentImplCopyWith<_$DeleteAppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppointmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)
        success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)?
        success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentStateCopyWith<$Res> {
  factory $AppointmentStateCopyWith(
          AppointmentState value, $Res Function(AppointmentState) then) =
      _$AppointmentStateCopyWithImpl<$Res, AppointmentState>;
}

/// @nodoc
class _$AppointmentStateCopyWithImpl<$Res, $Val extends AppointmentState>
    implements $AppointmentStateCopyWith<$Res> {
  _$AppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppointmentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)
        success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppointmentState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AppointmentState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)
        success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AppointmentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AppointmentEntity? appointmentData,
      GetAppointmentsEntity? getAppointmentsData,
      bool deleted,
      bool updated});

  $AppointmentEntityCopyWith<$Res>? get appointmentData;
  $GetAppointmentsEntityCopyWith<$Res>? get getAppointmentsData;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentData = freezed,
    Object? getAppointmentsData = freezed,
    Object? deleted = null,
    Object? updated = null,
  }) {
    return _then(_$SuccessImpl(
      appointmentData: freezed == appointmentData
          ? _value.appointmentData
          : appointmentData // ignore: cast_nullable_to_non_nullable
              as AppointmentEntity?,
      getAppointmentsData: freezed == getAppointmentsData
          ? _value.getAppointmentsData
          : getAppointmentsData // ignore: cast_nullable_to_non_nullable
              as GetAppointmentsEntity?,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentEntityCopyWith<$Res>? get appointmentData {
    if (_value.appointmentData == null) {
      return null;
    }

    return $AppointmentEntityCopyWith<$Res>(_value.appointmentData!, (value) {
      return _then(_value.copyWith(appointmentData: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GetAppointmentsEntityCopyWith<$Res>? get getAppointmentsData {
    if (_value.getAppointmentsData == null) {
      return null;
    }

    return $GetAppointmentsEntityCopyWith<$Res>(_value.getAppointmentsData!,
        (value) {
      return _then(_value.copyWith(getAppointmentsData: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {this.appointmentData,
      this.getAppointmentsData,
      this.deleted = false,
      this.updated = false});

  @override
  final AppointmentEntity? appointmentData;
  @override
  final GetAppointmentsEntity? getAppointmentsData;
  @override
  @JsonKey()
  final bool deleted;
  @override
  @JsonKey()
  final bool updated;

  @override
  String toString() {
    return 'AppointmentState.success(appointmentData: $appointmentData, getAppointmentsData: $getAppointmentsData, deleted: $deleted, updated: $updated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.appointmentData, appointmentData) ||
                other.appointmentData == appointmentData) &&
            (identical(other.getAppointmentsData, getAppointmentsData) ||
                other.getAppointmentsData == getAppointmentsData) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, appointmentData, getAppointmentsData, deleted, updated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)
        success,
    required TResult Function(String message) failure,
  }) {
    return success(appointmentData, getAppointmentsData, deleted, updated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(
        appointmentData, getAppointmentsData, deleted, updated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(appointmentData, getAppointmentsData, deleted, updated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AppointmentState {
  const factory _Success(
      {final AppointmentEntity? appointmentData,
      final GetAppointmentsEntity? getAppointmentsData,
      final bool deleted,
      final bool updated}) = _$SuccessImpl;

  AppointmentEntity? get appointmentData;
  GetAppointmentsEntity? get getAppointmentsData;
  bool get deleted;
  bool get updated;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppointmentState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)
        success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            AppointmentEntity? appointmentData,
            GetAppointmentsEntity? getAppointmentsData,
            bool deleted,
            bool updated)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AppointmentState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
