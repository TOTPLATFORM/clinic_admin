// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_gallery_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectGalleryRequestDto _$ProjectGalleryRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _ProjectGalleryRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectGalleryRequestDto {
  String get imageUrl => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectGalleryRequestDtoCopyWith<ProjectGalleryRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectGalleryRequestDtoCopyWith<$Res> {
  factory $ProjectGalleryRequestDtoCopyWith(ProjectGalleryRequestDto value,
          $Res Function(ProjectGalleryRequestDto) then) =
      _$ProjectGalleryRequestDtoCopyWithImpl<$Res, ProjectGalleryRequestDto>;
  @useResult
  $Res call({String imageUrl, String caption});
}

/// @nodoc
class _$ProjectGalleryRequestDtoCopyWithImpl<$Res,
        $Val extends ProjectGalleryRequestDto>
    implements $ProjectGalleryRequestDtoCopyWith<$Res> {
  _$ProjectGalleryRequestDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$ProjectGalleryRequestDtoImplCopyWith<$Res>
    implements $ProjectGalleryRequestDtoCopyWith<$Res> {
  factory _$$ProjectGalleryRequestDtoImplCopyWith(
          _$ProjectGalleryRequestDtoImpl value,
          $Res Function(_$ProjectGalleryRequestDtoImpl) then) =
      __$$ProjectGalleryRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, String caption});
}

/// @nodoc
class __$$ProjectGalleryRequestDtoImplCopyWithImpl<$Res>
    extends _$ProjectGalleryRequestDtoCopyWithImpl<$Res,
        _$ProjectGalleryRequestDtoImpl>
    implements _$$ProjectGalleryRequestDtoImplCopyWith<$Res> {
  __$$ProjectGalleryRequestDtoImplCopyWithImpl(
      _$ProjectGalleryRequestDtoImpl _value,
      $Res Function(_$ProjectGalleryRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? caption = null,
  }) {
    return _then(_$ProjectGalleryRequestDtoImpl(
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
class _$ProjectGalleryRequestDtoImpl
    with DiagnosticableTreeMixin
    implements _ProjectGalleryRequestDto {
  _$ProjectGalleryRequestDtoImpl({this.imageUrl = '', this.caption = ''});

  factory _$ProjectGalleryRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectGalleryRequestDtoImplFromJson(json);

  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final String caption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectGalleryRequestDto(imageUrl: $imageUrl, caption: $caption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectGalleryRequestDto'))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('caption', caption));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectGalleryRequestDtoImpl &&
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
  _$$ProjectGalleryRequestDtoImplCopyWith<_$ProjectGalleryRequestDtoImpl>
      get copyWith => __$$ProjectGalleryRequestDtoImplCopyWithImpl<
          _$ProjectGalleryRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectGalleryRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ProjectGalleryRequestDto implements ProjectGalleryRequestDto {
  factory _ProjectGalleryRequestDto(
      {final String imageUrl,
      final String caption}) = _$ProjectGalleryRequestDtoImpl;

  factory _ProjectGalleryRequestDto.fromJson(Map<String, dynamic> json) =
      _$ProjectGalleryRequestDtoImpl.fromJson;

  @override
  String get imageUrl;
  @override
  String get caption;
  @override
  @JsonKey(ignore: true)
  _$$ProjectGalleryRequestDtoImplCopyWith<_$ProjectGalleryRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
