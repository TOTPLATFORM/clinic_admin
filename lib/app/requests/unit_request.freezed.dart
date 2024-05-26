// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnitRequest _$UnitRequestFromJson(Map<String, dynamic> json) {
  return _UnitRequest.fromJson(json);
}

/// @nodoc
mixin _$UnitRequest {
  int get unitNumber => throw _privateConstructorUsedError;
  int get floor => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;
  int get bedrooms => throw _privateConstructorUsedError;
  int get bathrooms => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get propertyId => throw _privateConstructorUsedError;
  int get paymentPlanId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitRequestCopyWith<UnitRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitRequestCopyWith<$Res> {
  factory $UnitRequestCopyWith(
          UnitRequest value, $Res Function(UnitRequest) then) =
      _$UnitRequestCopyWithImpl<$Res, UnitRequest>;
  @useResult
  $Res call(
      {int unitNumber,
      int floor,
      double size,
      int bedrooms,
      int bathrooms,
      String status,
      int propertyId,
      int paymentPlanId});
}

/// @nodoc
class _$UnitRequestCopyWithImpl<$Res, $Val extends UnitRequest>
    implements $UnitRequestCopyWith<$Res> {
  _$UnitRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitNumber = null,
    Object? floor = null,
    Object? size = null,
    Object? bedrooms = null,
    Object? bathrooms = null,
    Object? status = null,
    Object? propertyId = null,
    Object? paymentPlanId = null,
  }) {
    return _then(_value.copyWith(
      unitNumber: null == unitNumber
          ? _value.unitNumber
          : unitNumber // ignore: cast_nullable_to_non_nullable
              as int,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: null == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentPlanId: null == paymentPlanId
          ? _value.paymentPlanId
          : paymentPlanId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitRequestImplCopyWith<$Res>
    implements $UnitRequestCopyWith<$Res> {
  factory _$$UnitRequestImplCopyWith(
          _$UnitRequestImpl value, $Res Function(_$UnitRequestImpl) then) =
      __$$UnitRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int unitNumber,
      int floor,
      double size,
      int bedrooms,
      int bathrooms,
      String status,
      int propertyId,
      int paymentPlanId});
}

/// @nodoc
class __$$UnitRequestImplCopyWithImpl<$Res>
    extends _$UnitRequestCopyWithImpl<$Res, _$UnitRequestImpl>
    implements _$$UnitRequestImplCopyWith<$Res> {
  __$$UnitRequestImplCopyWithImpl(
      _$UnitRequestImpl _value, $Res Function(_$UnitRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitNumber = null,
    Object? floor = null,
    Object? size = null,
    Object? bedrooms = null,
    Object? bathrooms = null,
    Object? status = null,
    Object? propertyId = null,
    Object? paymentPlanId = null,
  }) {
    return _then(_$UnitRequestImpl(
      unitNumber: null == unitNumber
          ? _value.unitNumber
          : unitNumber // ignore: cast_nullable_to_non_nullable
              as int,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: null == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentPlanId: null == paymentPlanId
          ? _value.paymentPlanId
          : paymentPlanId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitRequestImpl implements _UnitRequest {
  const _$UnitRequestImpl(
      {required this.unitNumber,
      required this.floor,
      required this.size,
      required this.bedrooms,
      required this.bathrooms,
      required this.status,
      required this.propertyId,
      required this.paymentPlanId});

  factory _$UnitRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitRequestImplFromJson(json);

  @override
  final int unitNumber;
  @override
  final int floor;
  @override
  final double size;
  @override
  final int bedrooms;
  @override
  final int bathrooms;
  @override
  final String status;
  @override
  final int propertyId;
  @override
  final int paymentPlanId;

  @override
  String toString() {
    return 'UnitRequest(unitNumber: $unitNumber, floor: $floor, size: $size, bedrooms: $bedrooms, bathrooms: $bathrooms, status: $status, propertyId: $propertyId, paymentPlanId: $paymentPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitRequestImpl &&
            (identical(other.unitNumber, unitNumber) ||
                other.unitNumber == unitNumber) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.bedrooms, bedrooms) ||
                other.bedrooms == bedrooms) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.paymentPlanId, paymentPlanId) ||
                other.paymentPlanId == paymentPlanId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, unitNumber, floor, size,
      bedrooms, bathrooms, status, propertyId, paymentPlanId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitRequestImplCopyWith<_$UnitRequestImpl> get copyWith =>
      __$$UnitRequestImplCopyWithImpl<_$UnitRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitRequestImplToJson(
      this,
    );
  }
}

abstract class _UnitRequest implements UnitRequest {
  const factory _UnitRequest(
      {required final int unitNumber,
      required final int floor,
      required final double size,
      required final int bedrooms,
      required final int bathrooms,
      required final String status,
      required final int propertyId,
      required final int paymentPlanId}) = _$UnitRequestImpl;

  factory _UnitRequest.fromJson(Map<String, dynamic> json) =
      _$UnitRequestImpl.fromJson;

  @override
  int get unitNumber;
  @override
  int get floor;
  @override
  double get size;
  @override
  int get bedrooms;
  @override
  int get bathrooms;
  @override
  String get status;
  @override
  int get propertyId;
  @override
  int get paymentPlanId;
  @override
  @JsonKey(ignore: true)
  _$$UnitRequestImplCopyWith<_$UnitRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
