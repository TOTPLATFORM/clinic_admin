// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationRequestDto _$LocationRequestDtoFromJson(Map<String, dynamic> json) {
  return _LocationRequestDto.fromJson(json);
}

/// @nodoc
mixin _$LocationRequestDto {
  String get name => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationRequestDtoCopyWith<LocationRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationRequestDtoCopyWith<$Res> {
  factory $LocationRequestDtoCopyWith(
          LocationRequestDto value, $Res Function(LocationRequestDto) then) =
      _$LocationRequestDtoCopyWithImpl<$Res, LocationRequestDto>;
  @useResult
  $Res call(
      {String name, double? latitude, double? longitude, String? address});
}

/// @nodoc
class _$LocationRequestDtoCopyWithImpl<$Res, $Val extends LocationRequestDto>
    implements $LocationRequestDtoCopyWith<$Res> {
  _$LocationRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationRequestDtoImplCopyWith<$Res>
    implements $LocationRequestDtoCopyWith<$Res> {
  factory _$$LocationRequestDtoImplCopyWith(_$LocationRequestDtoImpl value,
          $Res Function(_$LocationRequestDtoImpl) then) =
      __$$LocationRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, double? latitude, double? longitude, String? address});
}

/// @nodoc
class __$$LocationRequestDtoImplCopyWithImpl<$Res>
    extends _$LocationRequestDtoCopyWithImpl<$Res, _$LocationRequestDtoImpl>
    implements _$$LocationRequestDtoImplCopyWith<$Res> {
  __$$LocationRequestDtoImplCopyWithImpl(_$LocationRequestDtoImpl _value,
      $Res Function(_$LocationRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? address = freezed,
  }) {
    return _then(_$LocationRequestDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationRequestDtoImpl implements _LocationRequestDto {
  _$LocationRequestDtoImpl(
      {required this.name, this.latitude, this.longitude, this.address});

  factory _$LocationRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationRequestDtoImplFromJson(json);

  @override
  final String name;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? address;

  @override
  String toString() {
    return 'LocationRequestDto(name: $name, latitude: $latitude, longitude: $longitude, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationRequestDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, latitude, longitude, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationRequestDtoImplCopyWith<_$LocationRequestDtoImpl> get copyWith =>
      __$$LocationRequestDtoImplCopyWithImpl<_$LocationRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _LocationRequestDto implements LocationRequestDto {
  factory _LocationRequestDto(
      {required final String name,
      final double? latitude,
      final double? longitude,
      final String? address}) = _$LocationRequestDtoImpl;

  factory _LocationRequestDto.fromJson(Map<String, dynamic> json) =
      _$LocationRequestDtoImpl.fromJson;

  @override
  String get name;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$LocationRequestDtoImplCopyWith<_$LocationRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
