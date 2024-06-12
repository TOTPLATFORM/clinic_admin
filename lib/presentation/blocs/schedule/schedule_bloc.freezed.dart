// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleEvent {
  String get doctorId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId) getSchedulesByDoctorId,
    required TResult Function(String doctorId, int dayOfWeek) getSchedulesByDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String doctorId)? getSchedulesByDoctorId,
    TResult? Function(String doctorId, int dayOfWeek)? getSchedulesByDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getSchedulesByDoctorId,
    TResult Function(String doctorId, int dayOfWeek)? getSchedulesByDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSchedulesByDoctorId value)
        getSchedulesByDoctorId,
    required TResult Function(_GetSchedulesByDay value) getSchedulesByDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSchedulesByDoctorId value)? getSchedulesByDoctorId,
    TResult? Function(_GetSchedulesByDay value)? getSchedulesByDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSchedulesByDoctorId value)? getSchedulesByDoctorId,
    TResult Function(_GetSchedulesByDay value)? getSchedulesByDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleEventCopyWith<ScheduleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res, ScheduleEvent>;
  @useResult
  $Res call({String doctorId});
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res, $Val extends ScheduleEvent>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
  }) {
    return _then(_value.copyWith(
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSchedulesByDoctorIdImplCopyWith<$Res>
    implements $ScheduleEventCopyWith<$Res> {
  factory _$$GetSchedulesByDoctorIdImplCopyWith(
          _$GetSchedulesByDoctorIdImpl value,
          $Res Function(_$GetSchedulesByDoctorIdImpl) then) =
      __$$GetSchedulesByDoctorIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String doctorId});
}

/// @nodoc
class __$$GetSchedulesByDoctorIdImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$GetSchedulesByDoctorIdImpl>
    implements _$$GetSchedulesByDoctorIdImplCopyWith<$Res> {
  __$$GetSchedulesByDoctorIdImplCopyWithImpl(
      _$GetSchedulesByDoctorIdImpl _value,
      $Res Function(_$GetSchedulesByDoctorIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
  }) {
    return _then(_$GetSchedulesByDoctorIdImpl(
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSchedulesByDoctorIdImpl implements _GetSchedulesByDoctorId {
  const _$GetSchedulesByDoctorIdImpl({required this.doctorId});

  @override
  final String doctorId;

  @override
  String toString() {
    return 'ScheduleEvent.getSchedulesByDoctorId(doctorId: $doctorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSchedulesByDoctorIdImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSchedulesByDoctorIdImplCopyWith<_$GetSchedulesByDoctorIdImpl>
      get copyWith => __$$GetSchedulesByDoctorIdImplCopyWithImpl<
          _$GetSchedulesByDoctorIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId) getSchedulesByDoctorId,
    required TResult Function(String doctorId, int dayOfWeek) getSchedulesByDay,
  }) {
    return getSchedulesByDoctorId(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String doctorId)? getSchedulesByDoctorId,
    TResult? Function(String doctorId, int dayOfWeek)? getSchedulesByDay,
  }) {
    return getSchedulesByDoctorId?.call(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getSchedulesByDoctorId,
    TResult Function(String doctorId, int dayOfWeek)? getSchedulesByDay,
    required TResult orElse(),
  }) {
    if (getSchedulesByDoctorId != null) {
      return getSchedulesByDoctorId(doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSchedulesByDoctorId value)
        getSchedulesByDoctorId,
    required TResult Function(_GetSchedulesByDay value) getSchedulesByDay,
  }) {
    return getSchedulesByDoctorId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSchedulesByDoctorId value)? getSchedulesByDoctorId,
    TResult? Function(_GetSchedulesByDay value)? getSchedulesByDay,
  }) {
    return getSchedulesByDoctorId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSchedulesByDoctorId value)? getSchedulesByDoctorId,
    TResult Function(_GetSchedulesByDay value)? getSchedulesByDay,
    required TResult orElse(),
  }) {
    if (getSchedulesByDoctorId != null) {
      return getSchedulesByDoctorId(this);
    }
    return orElse();
  }
}

abstract class _GetSchedulesByDoctorId implements ScheduleEvent {
  const factory _GetSchedulesByDoctorId({required final String doctorId}) =
      _$GetSchedulesByDoctorIdImpl;

  @override
  String get doctorId;
  @override
  @JsonKey(ignore: true)
  _$$GetSchedulesByDoctorIdImplCopyWith<_$GetSchedulesByDoctorIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSchedulesByDayImplCopyWith<$Res>
    implements $ScheduleEventCopyWith<$Res> {
  factory _$$GetSchedulesByDayImplCopyWith(_$GetSchedulesByDayImpl value,
          $Res Function(_$GetSchedulesByDayImpl) then) =
      __$$GetSchedulesByDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String doctorId, int dayOfWeek});
}

/// @nodoc
class __$$GetSchedulesByDayImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$GetSchedulesByDayImpl>
    implements _$$GetSchedulesByDayImplCopyWith<$Res> {
  __$$GetSchedulesByDayImplCopyWithImpl(_$GetSchedulesByDayImpl _value,
      $Res Function(_$GetSchedulesByDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
    Object? dayOfWeek = null,
  }) {
    return _then(_$GetSchedulesByDayImpl(
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSchedulesByDayImpl implements _GetSchedulesByDay {
  const _$GetSchedulesByDayImpl(
      {required this.doctorId, required this.dayOfWeek});

  @override
  final String doctorId;
  @override
  final int dayOfWeek;

  @override
  String toString() {
    return 'ScheduleEvent.getSchedulesByDay(doctorId: $doctorId, dayOfWeek: $dayOfWeek)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSchedulesByDayImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorId, dayOfWeek);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSchedulesByDayImplCopyWith<_$GetSchedulesByDayImpl> get copyWith =>
      __$$GetSchedulesByDayImplCopyWithImpl<_$GetSchedulesByDayImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId) getSchedulesByDoctorId,
    required TResult Function(String doctorId, int dayOfWeek) getSchedulesByDay,
  }) {
    return getSchedulesByDay(doctorId, dayOfWeek);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String doctorId)? getSchedulesByDoctorId,
    TResult? Function(String doctorId, int dayOfWeek)? getSchedulesByDay,
  }) {
    return getSchedulesByDay?.call(doctorId, dayOfWeek);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getSchedulesByDoctorId,
    TResult Function(String doctorId, int dayOfWeek)? getSchedulesByDay,
    required TResult orElse(),
  }) {
    if (getSchedulesByDay != null) {
      return getSchedulesByDay(doctorId, dayOfWeek);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSchedulesByDoctorId value)
        getSchedulesByDoctorId,
    required TResult Function(_GetSchedulesByDay value) getSchedulesByDay,
  }) {
    return getSchedulesByDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSchedulesByDoctorId value)? getSchedulesByDoctorId,
    TResult? Function(_GetSchedulesByDay value)? getSchedulesByDay,
  }) {
    return getSchedulesByDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSchedulesByDoctorId value)? getSchedulesByDoctorId,
    TResult Function(_GetSchedulesByDay value)? getSchedulesByDay,
    required TResult orElse(),
  }) {
    if (getSchedulesByDay != null) {
      return getSchedulesByDay(this);
    }
    return orElse();
  }
}

abstract class _GetSchedulesByDay implements ScheduleEvent {
  const factory _GetSchedulesByDay(
      {required final String doctorId,
      required final int dayOfWeek}) = _$GetSchedulesByDayImpl;

  @override
  String get doctorId;
  int get dayOfWeek;
  @override
  @JsonKey(ignore: true)
  _$$GetSchedulesByDayImplCopyWith<_$GetSchedulesByDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ScheduleEntity> schedules,
            List<ScheduleEntity>? schedulesByDay)
        success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ScheduleEntity> schedules,
            List<ScheduleEntity>? schedulesByDay)?
        success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ScheduleEntity> schedules,
            List<ScheduleEntity>? schedulesByDay)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res, ScheduleState>;
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res, $Val extends ScheduleState>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ScheduleState.loading()';
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
    required TResult Function() loading,
    required TResult Function(List<ScheduleEntity> schedules,
            List<ScheduleEntity>? schedulesByDay)
        success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ScheduleEntity> schedules,
            List<ScheduleEntity>? schedulesByDay)?
        success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ScheduleEntity> schedules,
            List<ScheduleEntity>? schedulesByDay)?
        success,
    TResult Function(String message)? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ScheduleState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ScheduleEntity> schedules, List<ScheduleEntity>? schedulesByDay});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedules = null,
    Object? schedulesByDay = freezed,
  }) {
    return _then(_$SuccessImpl(
      schedules: null == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleEntity>,
      schedulesByDay: freezed == schedulesByDay
          ? _value._schedulesByDay
          : schedulesByDay // ignore: cast_nullable_to_non_nullable
              as List<ScheduleEntity>?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required final List<ScheduleEntity> schedules,
      final List<ScheduleEntity>? schedulesByDay})
      : _schedules = schedules,
        _schedulesByDay = schedulesByDay;

  final List<ScheduleEntity> _schedules;
  @override
  List<ScheduleEntity> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  final List<ScheduleEntity>? _schedulesByDay;
  @override
  List<ScheduleEntity>? get schedulesByDay {
    final value = _schedulesByDay;
    if (value == null) return null;
    if (_schedulesByDay is EqualUnmodifiableListView) return _schedulesByDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScheduleState.success(schedules: $schedules, schedulesByDay: $schedulesByDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules) &&
            const DeepCollectionEquality()
                .equals(other._schedulesByDay, _schedulesByDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_schedules),
      const DeepCollectionEquality().hash(_schedulesByDay));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ScheduleEntity> schedules,
            List<ScheduleEntity>? schedulesByDay)
        success,
    required TResult Function(String message) error,
  }) {
    return success(schedules, schedulesByDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ScheduleEntity> schedules,
            List<ScheduleEntity>? schedulesByDay)?
        success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(schedules, schedulesByDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ScheduleEntity> schedules,
            List<ScheduleEntity>? schedulesByDay)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(schedules, schedulesByDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ScheduleState {
  const factory _Success(
      {required final List<ScheduleEntity> schedules,
      final List<ScheduleEntity>? schedulesByDay}) = _$SuccessImpl;

  List<ScheduleEntity> get schedules;
  List<ScheduleEntity>? get schedulesByDay;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ScheduleState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ScheduleEntity> schedules,
            List<ScheduleEntity>? schedulesByDay)
        success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ScheduleEntity> schedules,
            List<ScheduleEntity>? schedulesByDay)?
        success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ScheduleEntity> schedules,
            List<ScheduleEntity>? schedulesByDay)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ScheduleState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
