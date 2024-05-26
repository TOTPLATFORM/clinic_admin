// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_category_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectCategoryRequest _$ProjectCategoryRequestFromJson(
    Map<String, dynamic> json) {
  return _ProjectCategoryRequest.fromJson(json);
}

/// @nodoc
mixin _$ProjectCategoryRequest {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCategoryRequestCopyWith<ProjectCategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCategoryRequestCopyWith<$Res> {
  factory $ProjectCategoryRequestCopyWith(ProjectCategoryRequest value,
          $Res Function(ProjectCategoryRequest) then) =
      _$ProjectCategoryRequestCopyWithImpl<$Res, ProjectCategoryRequest>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ProjectCategoryRequestCopyWithImpl<$Res,
        $Val extends ProjectCategoryRequest>
    implements $ProjectCategoryRequestCopyWith<$Res> {
  _$ProjectCategoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectCategoryRequestImplCopyWith<$Res>
    implements $ProjectCategoryRequestCopyWith<$Res> {
  factory _$$ProjectCategoryRequestImplCopyWith(
          _$ProjectCategoryRequestImpl value,
          $Res Function(_$ProjectCategoryRequestImpl) then) =
      __$$ProjectCategoryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ProjectCategoryRequestImplCopyWithImpl<$Res>
    extends _$ProjectCategoryRequestCopyWithImpl<$Res,
        _$ProjectCategoryRequestImpl>
    implements _$$ProjectCategoryRequestImplCopyWith<$Res> {
  __$$ProjectCategoryRequestImplCopyWithImpl(
      _$ProjectCategoryRequestImpl _value,
      $Res Function(_$ProjectCategoryRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ProjectCategoryRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectCategoryRequestImpl implements _ProjectCategoryRequest {
  const _$ProjectCategoryRequestImpl({required this.name});

  factory _$ProjectCategoryRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectCategoryRequestImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ProjectCategoryRequest(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectCategoryRequestImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectCategoryRequestImplCopyWith<_$ProjectCategoryRequestImpl>
      get copyWith => __$$ProjectCategoryRequestImplCopyWithImpl<
          _$ProjectCategoryRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectCategoryRequestImplToJson(
      this,
    );
  }
}

abstract class _ProjectCategoryRequest implements ProjectCategoryRequest {
  const factory _ProjectCategoryRequest({required final String name}) =
      _$ProjectCategoryRequestImpl;

  factory _ProjectCategoryRequest.fromJson(Map<String, dynamic> json) =
      _$ProjectCategoryRequestImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ProjectCategoryRequestImplCopyWith<_$ProjectCategoryRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
