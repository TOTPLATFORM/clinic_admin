// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_slot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimeSlotEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTimeSlots,
    required TResult Function(TimeSlotRequest timeSlot) addTimeSlot,
    required TResult Function(int timeSlotId) deleteTimeSlot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTimeSlots,
    TResult? Function(TimeSlotRequest timeSlot)? addTimeSlot,
    TResult? Function(int timeSlotId)? deleteTimeSlot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTimeSlots,
    TResult Function(TimeSlotRequest timeSlot)? addTimeSlot,
    TResult Function(int timeSlotId)? deleteTimeSlot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTimeSlots value) getAllTimeSlots,
    required TResult Function(_AddTimeSlot value) addTimeSlot,
    required TResult Function(_DeleteTimeSlot value) deleteTimeSlot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTimeSlots value)? getAllTimeSlots,
    TResult? Function(_AddTimeSlot value)? addTimeSlot,
    TResult? Function(_DeleteTimeSlot value)? deleteTimeSlot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTimeSlots value)? getAllTimeSlots,
    TResult Function(_AddTimeSlot value)? addTimeSlot,
    TResult Function(_DeleteTimeSlot value)? deleteTimeSlot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotEventCopyWith<$Res> {
  factory $TimeSlotEventCopyWith(
          TimeSlotEvent value, $Res Function(TimeSlotEvent) then) =
      _$TimeSlotEventCopyWithImpl<$Res, TimeSlotEvent>;
}

/// @nodoc
class _$TimeSlotEventCopyWithImpl<$Res, $Val extends TimeSlotEvent>
    implements $TimeSlotEventCopyWith<$Res> {
  _$TimeSlotEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllTimeSlotsImplCopyWith<$Res> {
  factory _$$GetAllTimeSlotsImplCopyWith(_$GetAllTimeSlotsImpl value,
          $Res Function(_$GetAllTimeSlotsImpl) then) =
      __$$GetAllTimeSlotsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllTimeSlotsImplCopyWithImpl<$Res>
    extends _$TimeSlotEventCopyWithImpl<$Res, _$GetAllTimeSlotsImpl>
    implements _$$GetAllTimeSlotsImplCopyWith<$Res> {
  __$$GetAllTimeSlotsImplCopyWithImpl(
      _$GetAllTimeSlotsImpl _value, $Res Function(_$GetAllTimeSlotsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllTimeSlotsImpl implements _GetAllTimeSlots {
  const _$GetAllTimeSlotsImpl();

  @override
  String toString() {
    return 'TimeSlotEvent.getAllTimeSlots()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllTimeSlotsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTimeSlots,
    required TResult Function(TimeSlotRequest timeSlot) addTimeSlot,
    required TResult Function(int timeSlotId) deleteTimeSlot,
  }) {
    return getAllTimeSlots();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTimeSlots,
    TResult? Function(TimeSlotRequest timeSlot)? addTimeSlot,
    TResult? Function(int timeSlotId)? deleteTimeSlot,
  }) {
    return getAllTimeSlots?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTimeSlots,
    TResult Function(TimeSlotRequest timeSlot)? addTimeSlot,
    TResult Function(int timeSlotId)? deleteTimeSlot,
    required TResult orElse(),
  }) {
    if (getAllTimeSlots != null) {
      return getAllTimeSlots();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTimeSlots value) getAllTimeSlots,
    required TResult Function(_AddTimeSlot value) addTimeSlot,
    required TResult Function(_DeleteTimeSlot value) deleteTimeSlot,
  }) {
    return getAllTimeSlots(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTimeSlots value)? getAllTimeSlots,
    TResult? Function(_AddTimeSlot value)? addTimeSlot,
    TResult? Function(_DeleteTimeSlot value)? deleteTimeSlot,
  }) {
    return getAllTimeSlots?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTimeSlots value)? getAllTimeSlots,
    TResult Function(_AddTimeSlot value)? addTimeSlot,
    TResult Function(_DeleteTimeSlot value)? deleteTimeSlot,
    required TResult orElse(),
  }) {
    if (getAllTimeSlots != null) {
      return getAllTimeSlots(this);
    }
    return orElse();
  }
}

abstract class _GetAllTimeSlots implements TimeSlotEvent {
  const factory _GetAllTimeSlots() = _$GetAllTimeSlotsImpl;
}

/// @nodoc
abstract class _$$AddTimeSlotImplCopyWith<$Res> {
  factory _$$AddTimeSlotImplCopyWith(
          _$AddTimeSlotImpl value, $Res Function(_$AddTimeSlotImpl) then) =
      __$$AddTimeSlotImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeSlotRequest timeSlot});

  $TimeSlotRequestCopyWith<$Res> get timeSlot;
}

/// @nodoc
class __$$AddTimeSlotImplCopyWithImpl<$Res>
    extends _$TimeSlotEventCopyWithImpl<$Res, _$AddTimeSlotImpl>
    implements _$$AddTimeSlotImplCopyWith<$Res> {
  __$$AddTimeSlotImplCopyWithImpl(
      _$AddTimeSlotImpl _value, $Res Function(_$AddTimeSlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlot = null,
  }) {
    return _then(_$AddTimeSlotImpl(
      null == timeSlot
          ? _value.timeSlot
          : timeSlot // ignore: cast_nullable_to_non_nullable
              as TimeSlotRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeSlotRequestCopyWith<$Res> get timeSlot {
    return $TimeSlotRequestCopyWith<$Res>(_value.timeSlot, (value) {
      return _then(_value.copyWith(timeSlot: value));
    });
  }
}

/// @nodoc

class _$AddTimeSlotImpl implements _AddTimeSlot {
  const _$AddTimeSlotImpl(this.timeSlot);

  @override
  final TimeSlotRequest timeSlot;

  @override
  String toString() {
    return 'TimeSlotEvent.addTimeSlot(timeSlot: $timeSlot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTimeSlotImpl &&
            (identical(other.timeSlot, timeSlot) ||
                other.timeSlot == timeSlot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSlot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTimeSlotImplCopyWith<_$AddTimeSlotImpl> get copyWith =>
      __$$AddTimeSlotImplCopyWithImpl<_$AddTimeSlotImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTimeSlots,
    required TResult Function(TimeSlotRequest timeSlot) addTimeSlot,
    required TResult Function(int timeSlotId) deleteTimeSlot,
  }) {
    return addTimeSlot(timeSlot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTimeSlots,
    TResult? Function(TimeSlotRequest timeSlot)? addTimeSlot,
    TResult? Function(int timeSlotId)? deleteTimeSlot,
  }) {
    return addTimeSlot?.call(timeSlot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTimeSlots,
    TResult Function(TimeSlotRequest timeSlot)? addTimeSlot,
    TResult Function(int timeSlotId)? deleteTimeSlot,
    required TResult orElse(),
  }) {
    if (addTimeSlot != null) {
      return addTimeSlot(timeSlot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTimeSlots value) getAllTimeSlots,
    required TResult Function(_AddTimeSlot value) addTimeSlot,
    required TResult Function(_DeleteTimeSlot value) deleteTimeSlot,
  }) {
    return addTimeSlot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTimeSlots value)? getAllTimeSlots,
    TResult? Function(_AddTimeSlot value)? addTimeSlot,
    TResult? Function(_DeleteTimeSlot value)? deleteTimeSlot,
  }) {
    return addTimeSlot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTimeSlots value)? getAllTimeSlots,
    TResult Function(_AddTimeSlot value)? addTimeSlot,
    TResult Function(_DeleteTimeSlot value)? deleteTimeSlot,
    required TResult orElse(),
  }) {
    if (addTimeSlot != null) {
      return addTimeSlot(this);
    }
    return orElse();
  }
}

abstract class _AddTimeSlot implements TimeSlotEvent {
  const factory _AddTimeSlot(final TimeSlotRequest timeSlot) =
      _$AddTimeSlotImpl;

  TimeSlotRequest get timeSlot;
  @JsonKey(ignore: true)
  _$$AddTimeSlotImplCopyWith<_$AddTimeSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTimeSlotImplCopyWith<$Res> {
  factory _$$DeleteTimeSlotImplCopyWith(_$DeleteTimeSlotImpl value,
          $Res Function(_$DeleteTimeSlotImpl) then) =
      __$$DeleteTimeSlotImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int timeSlotId});
}

/// @nodoc
class __$$DeleteTimeSlotImplCopyWithImpl<$Res>
    extends _$TimeSlotEventCopyWithImpl<$Res, _$DeleteTimeSlotImpl>
    implements _$$DeleteTimeSlotImplCopyWith<$Res> {
  __$$DeleteTimeSlotImplCopyWithImpl(
      _$DeleteTimeSlotImpl _value, $Res Function(_$DeleteTimeSlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlotId = null,
  }) {
    return _then(_$DeleteTimeSlotImpl(
      timeSlotId: null == timeSlotId
          ? _value.timeSlotId
          : timeSlotId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteTimeSlotImpl implements _DeleteTimeSlot {
  const _$DeleteTimeSlotImpl({required this.timeSlotId});

  @override
  final int timeSlotId;

  @override
  String toString() {
    return 'TimeSlotEvent.deleteTimeSlot(timeSlotId: $timeSlotId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTimeSlotImpl &&
            (identical(other.timeSlotId, timeSlotId) ||
                other.timeSlotId == timeSlotId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSlotId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTimeSlotImplCopyWith<_$DeleteTimeSlotImpl> get copyWith =>
      __$$DeleteTimeSlotImplCopyWithImpl<_$DeleteTimeSlotImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTimeSlots,
    required TResult Function(TimeSlotRequest timeSlot) addTimeSlot,
    required TResult Function(int timeSlotId) deleteTimeSlot,
  }) {
    return deleteTimeSlot(timeSlotId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllTimeSlots,
    TResult? Function(TimeSlotRequest timeSlot)? addTimeSlot,
    TResult? Function(int timeSlotId)? deleteTimeSlot,
  }) {
    return deleteTimeSlot?.call(timeSlotId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTimeSlots,
    TResult Function(TimeSlotRequest timeSlot)? addTimeSlot,
    TResult Function(int timeSlotId)? deleteTimeSlot,
    required TResult orElse(),
  }) {
    if (deleteTimeSlot != null) {
      return deleteTimeSlot(timeSlotId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTimeSlots value) getAllTimeSlots,
    required TResult Function(_AddTimeSlot value) addTimeSlot,
    required TResult Function(_DeleteTimeSlot value) deleteTimeSlot,
  }) {
    return deleteTimeSlot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllTimeSlots value)? getAllTimeSlots,
    TResult? Function(_AddTimeSlot value)? addTimeSlot,
    TResult? Function(_DeleteTimeSlot value)? deleteTimeSlot,
  }) {
    return deleteTimeSlot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTimeSlots value)? getAllTimeSlots,
    TResult Function(_AddTimeSlot value)? addTimeSlot,
    TResult Function(_DeleteTimeSlot value)? deleteTimeSlot,
    required TResult orElse(),
  }) {
    if (deleteTimeSlot != null) {
      return deleteTimeSlot(this);
    }
    return orElse();
  }
}

abstract class _DeleteTimeSlot implements TimeSlotEvent {
  const factory _DeleteTimeSlot({required final int timeSlotId}) =
      _$DeleteTimeSlotImpl;

  int get timeSlotId;
  @JsonKey(ignore: true)
  _$$DeleteTimeSlotImplCopyWith<_$DeleteTimeSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimeSlotState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(
            List<TimeSlot>? slots, bool deleted, String? errorMessage)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(
            List<TimeSlot>? slots, bool deleted, String? errorMessage)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<TimeSlot>? slots, bool deleted, String? errorMessage)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotStateCopyWith<$Res> {
  factory $TimeSlotStateCopyWith(
          TimeSlotState value, $Res Function(TimeSlotState) then) =
      _$TimeSlotStateCopyWithImpl<$Res, TimeSlotState>;
}

/// @nodoc
class _$TimeSlotStateCopyWithImpl<$Res, $Val extends TimeSlotState>
    implements $TimeSlotStateCopyWith<$Res> {
  _$TimeSlotStateCopyWithImpl(this._value, this._then);

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
    extends _$TimeSlotStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl();

  @override
  String toString() {
    return 'TimeSlotState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(
            List<TimeSlot>? slots, bool deleted, String? errorMessage)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(
            List<TimeSlot>? slots, bool deleted, String? errorMessage)?
        success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<TimeSlot>? slots, bool deleted, String? errorMessage)?
        success,
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
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TimeSlotState {
  factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TimeSlotStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  _$LoadingImpl();

  @override
  String toString() {
    return 'TimeSlotState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(
            List<TimeSlot>? slots, bool deleted, String? errorMessage)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(
            List<TimeSlot>? slots, bool deleted, String? errorMessage)?
        success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<TimeSlot>? slots, bool deleted, String? errorMessage)?
        success,
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
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TimeSlotState {
  factory _Loading() = _$LoadingImpl;
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
    extends _$TimeSlotStateCopyWithImpl<$Res, _$FailureImpl>
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
  _$FailureImpl({required this.message});

  @override
  String message;

  @override
  String toString() {
    return 'TimeSlotState.failure(message: $message)';
  }

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
    required TResult Function(String message) failure,
    required TResult Function(
            List<TimeSlot>? slots, bool deleted, String? errorMessage)
        success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(
            List<TimeSlot>? slots, bool deleted, String? errorMessage)?
        success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<TimeSlot>? slots, bool deleted, String? errorMessage)?
        success,
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
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements TimeSlotState {
  factory _Failure({required String message}) = _$FailureImpl;

  String get message;
  set message(String value);
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TimeSlot>? slots, bool deleted, String? errorMessage});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$TimeSlotStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slots = freezed,
    Object? deleted = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SuccessImpl(
      slots: freezed == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<TimeSlot>?,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  _$SuccessImpl({this.slots, this.deleted = false, this.errorMessage});

  @override
  List<TimeSlot>? slots;
  @override
  @JsonKey()
  bool deleted;
  @override
  String? errorMessage;

  @override
  String toString() {
    return 'TimeSlotState.success(slots: $slots, deleted: $deleted, errorMessage: $errorMessage)';
  }

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
    required TResult Function(String message) failure,
    required TResult Function(
            List<TimeSlot>? slots, bool deleted, String? errorMessage)
        success,
  }) {
    return success(slots, deleted, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(
            List<TimeSlot>? slots, bool deleted, String? errorMessage)?
        success,
  }) {
    return success?.call(slots, deleted, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<TimeSlot>? slots, bool deleted, String? errorMessage)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(slots, deleted, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements TimeSlotState {
  factory _Success(
      {List<TimeSlot>? slots,
      bool deleted,
      String? errorMessage}) = _$SuccessImpl;

  List<TimeSlot>? get slots;
  set slots(List<TimeSlot>? value);
  bool get deleted;
  set deleted(bool value);
  String? get errorMessage;
  set errorMessage(String? value);
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
