// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CityRequest _$CityRequestFromJson(Map<String, dynamic> json) {
  return _CityRequest.fromJson(json);
}

/// @nodoc
mixin _$CityRequest {
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityRequestCopyWith<CityRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityRequestCopyWith<$Res> {
  factory $CityRequestCopyWith(
          CityRequest value, $Res Function(CityRequest) then) =
      _$CityRequestCopyWithImpl<$Res, CityRequest>;
  @useResult
  $Res call({String name, String? image});
}

/// @nodoc
class _$CityRequestCopyWithImpl<$Res, $Val extends CityRequest>
    implements $CityRequestCopyWith<$Res> {
  _$CityRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityRequestImplCopyWith<$Res>
    implements $CityRequestCopyWith<$Res> {
  factory _$$CityRequestImplCopyWith(
          _$CityRequestImpl value, $Res Function(_$CityRequestImpl) then) =
      __$$CityRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? image});
}

/// @nodoc
class __$$CityRequestImplCopyWithImpl<$Res>
    extends _$CityRequestCopyWithImpl<$Res, _$CityRequestImpl>
    implements _$$CityRequestImplCopyWith<$Res> {
  __$$CityRequestImplCopyWithImpl(
      _$CityRequestImpl _value, $Res Function(_$CityRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_$CityRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityRequestImpl implements _CityRequest {
  const _$CityRequestImpl({required this.name, this.image});

  factory _$CityRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String? image;

  @override
  String toString() {
    return 'CityRequest(name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityRequestImplCopyWith<_$CityRequestImpl> get copyWith =>
      __$$CityRequestImplCopyWithImpl<_$CityRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityRequestImplToJson(
      this,
    );
  }
}

abstract class _CityRequest implements CityRequest {
  const factory _CityRequest(
      {required final String name, final String? image}) = _$CityRequestImpl;

  factory _CityRequest.fromJson(Map<String, dynamic> json) =
      _$CityRequestImpl.fromJson;

  @override
  String get name;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$CityRequestImplCopyWith<_$CityRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
