// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'floor_plan_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FloorPlanRequest _$FloorPlanRequestFromJson(Map<String, dynamic> json) {
  return _FloorPlanRequest.fromJson(json);
}

/// @nodoc
mixin _$FloorPlanRequest {
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  int get propertyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorPlanRequestCopyWith<FloorPlanRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorPlanRequestCopyWith<$Res> {
  factory $FloorPlanRequestCopyWith(
          FloorPlanRequest value, $Res Function(FloorPlanRequest) then) =
      _$FloorPlanRequestCopyWithImpl<$Res, FloorPlanRequest>;
  @useResult
  $Res call({String? imageUrl, String? caption, int propertyId});
}

/// @nodoc
class _$FloorPlanRequestCopyWithImpl<$Res, $Val extends FloorPlanRequest>
    implements $FloorPlanRequestCopyWith<$Res> {
  _$FloorPlanRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? caption = freezed,
    Object? propertyId = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FloorPlanRequestImplCopyWith<$Res>
    implements $FloorPlanRequestCopyWith<$Res> {
  factory _$$FloorPlanRequestImplCopyWith(_$FloorPlanRequestImpl value,
          $Res Function(_$FloorPlanRequestImpl) then) =
      __$$FloorPlanRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageUrl, String? caption, int propertyId});
}

/// @nodoc
class __$$FloorPlanRequestImplCopyWithImpl<$Res>
    extends _$FloorPlanRequestCopyWithImpl<$Res, _$FloorPlanRequestImpl>
    implements _$$FloorPlanRequestImplCopyWith<$Res> {
  __$$FloorPlanRequestImplCopyWithImpl(_$FloorPlanRequestImpl _value,
      $Res Function(_$FloorPlanRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? caption = freezed,
    Object? propertyId = null,
  }) {
    return _then(_$FloorPlanRequestImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FloorPlanRequestImpl implements _FloorPlanRequest {
  const _$FloorPlanRequestImpl(
      {this.imageUrl, this.caption, required this.propertyId});

  factory _$FloorPlanRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FloorPlanRequestImplFromJson(json);

  @override
  final String? imageUrl;
  @override
  final String? caption;
  @override
  final int propertyId;

  @override
  String toString() {
    return 'FloorPlanRequest(imageUrl: $imageUrl, caption: $caption, propertyId: $propertyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FloorPlanRequestImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, caption, propertyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FloorPlanRequestImplCopyWith<_$FloorPlanRequestImpl> get copyWith =>
      __$$FloorPlanRequestImplCopyWithImpl<_$FloorPlanRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FloorPlanRequestImplToJson(
      this,
    );
  }
}

abstract class _FloorPlanRequest implements FloorPlanRequest {
  const factory _FloorPlanRequest(
      {final String? imageUrl,
      final String? caption,
      required final int propertyId}) = _$FloorPlanRequestImpl;

  factory _FloorPlanRequest.fromJson(Map<String, dynamic> json) =
      _$FloorPlanRequestImpl.fromJson;

  @override
  String? get imageUrl;
  @override
  String? get caption;
  @override
  int get propertyId;
  @override
  @JsonKey(ignore: true)
  _$$FloorPlanRequestImplCopyWith<_$FloorPlanRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
