// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phase_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhaseRequest _$PhaseRequestFromJson(Map<String, dynamic> json) {
  return _PhaseRequest.fromJson(json);
}

/// @nodoc
mixin _$PhaseRequest {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  int get projectId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhaseRequestCopyWith<PhaseRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhaseRequestCopyWith<$Res> {
  factory $PhaseRequestCopyWith(
          PhaseRequest value, $Res Function(PhaseRequest) then) =
      _$PhaseRequestCopyWithImpl<$Res, PhaseRequest>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      int projectId});
}

/// @nodoc
class _$PhaseRequestCopyWithImpl<$Res, $Val extends PhaseRequest>
    implements $PhaseRequestCopyWith<$Res> {
  _$PhaseRequestCopyWithImpl(this._value, this._then);

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
    Object? startDate = null,
    Object? endDate = null,
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
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhaseRequestImplCopyWith<$Res>
    implements $PhaseRequestCopyWith<$Res> {
  factory _$$PhaseRequestImplCopyWith(
          _$PhaseRequestImpl value, $Res Function(_$PhaseRequestImpl) then) =
      __$$PhaseRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      int projectId});
}

/// @nodoc
class __$$PhaseRequestImplCopyWithImpl<$Res>
    extends _$PhaseRequestCopyWithImpl<$Res, _$PhaseRequestImpl>
    implements _$$PhaseRequestImplCopyWith<$Res> {
  __$$PhaseRequestImplCopyWithImpl(
      _$PhaseRequestImpl _value, $Res Function(_$PhaseRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? projectId = null,
  }) {
    return _then(_$PhaseRequestImpl(
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
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhaseRequestImpl implements _PhaseRequest {
  const _$PhaseRequestImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.startDate,
      required this.endDate,
      required this.projectId});

  factory _$PhaseRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhaseRequestImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final int projectId;

  @override
  String toString() {
    return 'PhaseRequest(id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhaseRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, startDate, endDate, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhaseRequestImplCopyWith<_$PhaseRequestImpl> get copyWith =>
      __$$PhaseRequestImplCopyWithImpl<_$PhaseRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhaseRequestImplToJson(
      this,
    );
  }
}

abstract class _PhaseRequest implements PhaseRequest {
  const factory _PhaseRequest(
      {required final int id,
      required final String name,
      required final String description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final int projectId}) = _$PhaseRequestImpl;

  factory _PhaseRequest.fromJson(Map<String, dynamic> json) =
      _$PhaseRequestImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  int get projectId;
  @override
  @JsonKey(ignore: true)
  _$$PhaseRequestImplCopyWith<_$PhaseRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
