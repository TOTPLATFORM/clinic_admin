// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_slot_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeSlotRequest _$TimeSlotRequestFromJson(Map<String, dynamic> json) {
  return _TimeSlotRequest.fromJson(json);
}

/// @nodoc
mixin _$TimeSlotRequest {
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSlotRequestCopyWith<TimeSlotRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotRequestCopyWith<$Res> {
  factory $TimeSlotRequestCopyWith(
          TimeSlotRequest value, $Res Function(TimeSlotRequest) then) =
      _$TimeSlotRequestCopyWithImpl<$Res, TimeSlotRequest>;
  @useResult
  $Res call({String startTime, String endTime, String day});
}

/// @nodoc
class _$TimeSlotRequestCopyWithImpl<$Res, $Val extends TimeSlotRequest>
    implements $TimeSlotRequestCopyWith<$Res> {
  _$TimeSlotRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? day = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeSlotRequestImplCopyWith<$Res>
    implements $TimeSlotRequestCopyWith<$Res> {
  factory _$$TimeSlotRequestImplCopyWith(_$TimeSlotRequestImpl value,
          $Res Function(_$TimeSlotRequestImpl) then) =
      __$$TimeSlotRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startTime, String endTime, String day});
}

/// @nodoc
class __$$TimeSlotRequestImplCopyWithImpl<$Res>
    extends _$TimeSlotRequestCopyWithImpl<$Res, _$TimeSlotRequestImpl>
    implements _$$TimeSlotRequestImplCopyWith<$Res> {
  __$$TimeSlotRequestImplCopyWithImpl(
      _$TimeSlotRequestImpl _value, $Res Function(_$TimeSlotRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? day = null,
  }) {
    return _then(_$TimeSlotRequestImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeSlotRequestImpl implements _TimeSlotRequest {
  const _$TimeSlotRequestImpl(
      {required this.startTime, required this.endTime, required this.day});

  factory _$TimeSlotRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeSlotRequestImplFromJson(json);

  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final String day;

  @override
  String toString() {
    return 'TimeSlotRequest(startTime: $startTime, endTime: $endTime, day: $day)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSlotRequestImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSlotRequestImplCopyWith<_$TimeSlotRequestImpl> get copyWith =>
      __$$TimeSlotRequestImplCopyWithImpl<_$TimeSlotRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeSlotRequestImplToJson(
      this,
    );
  }
}

abstract class _TimeSlotRequest implements TimeSlotRequest {
  const factory _TimeSlotRequest(
      {required final String startTime,
      required final String endTime,
      required final String day}) = _$TimeSlotRequestImpl;

  factory _TimeSlotRequest.fromJson(Map<String, dynamic> json) =
      _$TimeSlotRequestImpl.fromJson;

  @override
  String get startTime;
  @override
  String get endTime;
  @override
  String get day;
  @override
  @JsonKey(ignore: true)
  _$$TimeSlotRequestImplCopyWith<_$TimeSlotRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
