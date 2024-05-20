// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'developer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeveloperRequest _$DeveloperRequestFromJson(Map<String, dynamic> json) {
  return _DeveloperRequest.fromJson(json);
}

/// @nodoc
mixin _$DeveloperRequest {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get logoUrl => throw _privateConstructorUsedError;
  String get establishedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeveloperRequestCopyWith<DeveloperRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeveloperRequestCopyWith<$Res> {
  factory $DeveloperRequestCopyWith(
          DeveloperRequest value, $Res Function(DeveloperRequest) then) =
      _$DeveloperRequestCopyWithImpl<$Res, DeveloperRequest>;
  @useResult
  $Res call(
      {String name,
      String description,
      String logoUrl,
      String establishedDate});
}

/// @nodoc
class _$DeveloperRequestCopyWithImpl<$Res, $Val extends DeveloperRequest>
    implements $DeveloperRequestCopyWith<$Res> {
  _$DeveloperRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? logoUrl = null,
    Object? establishedDate = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      establishedDate: null == establishedDate
          ? _value.establishedDate
          : establishedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeveloperRequestImplCopyWith<$Res>
    implements $DeveloperRequestCopyWith<$Res> {
  factory _$$DeveloperRequestImplCopyWith(_$DeveloperRequestImpl value,
          $Res Function(_$DeveloperRequestImpl) then) =
      __$$DeveloperRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String logoUrl,
      String establishedDate});
}

/// @nodoc
class __$$DeveloperRequestImplCopyWithImpl<$Res>
    extends _$DeveloperRequestCopyWithImpl<$Res, _$DeveloperRequestImpl>
    implements _$$DeveloperRequestImplCopyWith<$Res> {
  __$$DeveloperRequestImplCopyWithImpl(_$DeveloperRequestImpl _value,
      $Res Function(_$DeveloperRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? logoUrl = null,
    Object? establishedDate = null,
  }) {
    return _then(_$DeveloperRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      establishedDate: null == establishedDate
          ? _value.establishedDate
          : establishedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeveloperRequestImpl implements _DeveloperRequest {
  const _$DeveloperRequestImpl(
      {required this.name,
      required this.description,
      required this.logoUrl,
      required this.establishedDate});

  factory _$DeveloperRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeveloperRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String logoUrl;
  @override
  final String establishedDate;

  @override
  String toString() {
    return 'DeveloperRequest(name: $name, description: $description, logoUrl: $logoUrl, establishedDate: $establishedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeveloperRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.establishedDate, establishedDate) ||
                other.establishedDate == establishedDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, logoUrl, establishedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeveloperRequestImplCopyWith<_$DeveloperRequestImpl> get copyWith =>
      __$$DeveloperRequestImplCopyWithImpl<_$DeveloperRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeveloperRequestImplToJson(
      this,
    );
  }
}

abstract class _DeveloperRequest implements DeveloperRequest {
  const factory _DeveloperRequest(
      {required final String name,
      required final String description,
      required final String logoUrl,
      required final String establishedDate}) = _$DeveloperRequestImpl;

  factory _DeveloperRequest.fromJson(Map<String, dynamic> json) =
      _$DeveloperRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get logoUrl;
  @override
  String get establishedDate;
  @override
  @JsonKey(ignore: true)
  _$$DeveloperRequestImplCopyWith<_$DeveloperRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
