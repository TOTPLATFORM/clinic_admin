// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_gallery_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyGalleryRequest _$PropertyGalleryRequestFromJson(
    Map<String, dynamic> json) {
  return _PropertyGalleryRequest.fromJson(json);
}

/// @nodoc
mixin _$PropertyGalleryRequest {
  String get imageUrl => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyGalleryRequestCopyWith<PropertyGalleryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyGalleryRequestCopyWith<$Res> {
  factory $PropertyGalleryRequestCopyWith(PropertyGalleryRequest value,
          $Res Function(PropertyGalleryRequest) then) =
      _$PropertyGalleryRequestCopyWithImpl<$Res, PropertyGalleryRequest>;
  @useResult
  $Res call({String imageUrl, String caption});
}

/// @nodoc
class _$PropertyGalleryRequestCopyWithImpl<$Res,
        $Val extends PropertyGalleryRequest>
    implements $PropertyGalleryRequestCopyWith<$Res> {
  _$PropertyGalleryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? caption = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyGalleryRequestImplCopyWith<$Res>
    implements $PropertyGalleryRequestCopyWith<$Res> {
  factory _$$PropertyGalleryRequestImplCopyWith(
          _$PropertyGalleryRequestImpl value,
          $Res Function(_$PropertyGalleryRequestImpl) then) =
      __$$PropertyGalleryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, String caption});
}

/// @nodoc
class __$$PropertyGalleryRequestImplCopyWithImpl<$Res>
    extends _$PropertyGalleryRequestCopyWithImpl<$Res,
        _$PropertyGalleryRequestImpl>
    implements _$$PropertyGalleryRequestImplCopyWith<$Res> {
  __$$PropertyGalleryRequestImplCopyWithImpl(
      _$PropertyGalleryRequestImpl _value,
      $Res Function(_$PropertyGalleryRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? caption = null,
  }) {
    return _then(_$PropertyGalleryRequestImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyGalleryRequestImpl implements _PropertyGalleryRequest {
  const _$PropertyGalleryRequestImpl(
      {required this.imageUrl, required this.caption});

  factory _$PropertyGalleryRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyGalleryRequestImplFromJson(json);

  @override
  final String imageUrl;
  @override
  final String caption;

  @override
  String toString() {
    return 'PropertyGalleryRequest(imageUrl: $imageUrl, caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyGalleryRequestImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyGalleryRequestImplCopyWith<_$PropertyGalleryRequestImpl>
      get copyWith => __$$PropertyGalleryRequestImplCopyWithImpl<
          _$PropertyGalleryRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyGalleryRequestImplToJson(
      this,
    );
  }
}

abstract class _PropertyGalleryRequest implements PropertyGalleryRequest {
  const factory _PropertyGalleryRequest(
      {required final String imageUrl,
      required final String caption}) = _$PropertyGalleryRequestImpl;

  factory _PropertyGalleryRequest.fromJson(Map<String, dynamic> json) =
      _$PropertyGalleryRequestImpl.fromJson;

  @override
  String get imageUrl;
  @override
  String get caption;
  @override
  @JsonKey(ignore: true)
  _$$PropertyGalleryRequestImplCopyWith<_$PropertyGalleryRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
