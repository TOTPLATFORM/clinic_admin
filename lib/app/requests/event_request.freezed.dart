// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventRequest _$EventRequestFromJson(Map<String, dynamic> json) {
  return _EventRequest.fromJson(json);
}

/// @nodoc
mixin _$EventRequest {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  int get projectId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventRequestCopyWith<EventRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventRequestCopyWith<$Res> {
  factory $EventRequestCopyWith(
          EventRequest value, $Res Function(EventRequest) then) =
      _$EventRequestCopyWithImpl<$Res, EventRequest>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      DateTime date,
      String location,
      int projectId});
}

/// @nodoc
class _$EventRequestCopyWithImpl<$Res, $Val extends EventRequest>
    implements $EventRequestCopyWith<$Res> {
  _$EventRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? date = null,
    Object? location = null,
    Object? projectId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventRequestImplCopyWith<$Res>
    implements $EventRequestCopyWith<$Res> {
  factory _$$EventRequestImplCopyWith(
          _$EventRequestImpl value, $Res Function(_$EventRequestImpl) then) =
      __$$EventRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      DateTime date,
      String location,
      int projectId});
}

/// @nodoc
class __$$EventRequestImplCopyWithImpl<$Res>
    extends _$EventRequestCopyWithImpl<$Res, _$EventRequestImpl>
    implements _$$EventRequestImplCopyWith<$Res> {
  __$$EventRequestImplCopyWithImpl(
      _$EventRequestImpl _value, $Res Function(_$EventRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? date = null,
    Object? location = null,
    Object? projectId = null,
  }) {
    return _then(_$EventRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
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
class _$EventRequestImpl implements _EventRequest {
  const _$EventRequestImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.date,
      required this.location,
      required this.projectId});

  factory _$EventRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventRequestImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final DateTime date;
  @override
  final String location;
  @override
  final int projectId;

  @override
  String toString() {
    return 'EventRequest(id: $id, name: $name, description: $description, date: $date, location: $location, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, date, location, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventRequestImplCopyWith<_$EventRequestImpl> get copyWith =>
      __$$EventRequestImplCopyWithImpl<_$EventRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventRequestImplToJson(
      this,
    );
  }
}

abstract class _EventRequest implements EventRequest {
  const factory _EventRequest(
      {required final int id,
      required final String name,
      required final String description,
      required final DateTime date,
      required final String location,
      required final int projectId}) = _$EventRequestImpl;

  factory _EventRequest.fromJson(Map<String, dynamic> json) =
      _$EventRequestImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  DateTime get date;
  @override
  String get location;
  @override
  int get projectId;
  @override
  @JsonKey(ignore: true)
  _$$EventRequestImplCopyWith<_$EventRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
