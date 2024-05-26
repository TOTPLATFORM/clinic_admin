// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfferRequest _$OfferRequestFromJson(Map<String, dynamic> json) {
  return _OfferRequest.fromJson(json);
}

/// @nodoc
mixin _$OfferRequest {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;
  int get unitNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferRequestCopyWith<OfferRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferRequestCopyWith<$Res> {
  factory $OfferRequestCopyWith(
          OfferRequest value, $Res Function(OfferRequest) then) =
      _$OfferRequestCopyWithImpl<$Res, OfferRequest>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      int discount,
      int unitNumber});
}

/// @nodoc
class _$OfferRequestCopyWithImpl<$Res, $Val extends OfferRequest>
    implements $OfferRequestCopyWith<$Res> {
  _$OfferRequestCopyWithImpl(this._value, this._then);

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
    Object? discount = null,
    Object? unitNumber = null,
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      unitNumber: null == unitNumber
          ? _value.unitNumber
          : unitNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferRequestImplCopyWith<$Res>
    implements $OfferRequestCopyWith<$Res> {
  factory _$$OfferRequestImplCopyWith(
          _$OfferRequestImpl value, $Res Function(_$OfferRequestImpl) then) =
      __$$OfferRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      int discount,
      int unitNumber});
}

/// @nodoc
class __$$OfferRequestImplCopyWithImpl<$Res>
    extends _$OfferRequestCopyWithImpl<$Res, _$OfferRequestImpl>
    implements _$$OfferRequestImplCopyWith<$Res> {
  __$$OfferRequestImplCopyWithImpl(
      _$OfferRequestImpl _value, $Res Function(_$OfferRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? discount = null,
    Object? unitNumber = null,
  }) {
    return _then(_$OfferRequestImpl(
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      unitNumber: null == unitNumber
          ? _value.unitNumber
          : unitNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferRequestImpl implements _OfferRequest {
  const _$OfferRequestImpl(
      {required this.id,
      this.name = '',
      this.description = '',
      required this.startDate,
      required this.endDate,
      required this.discount,
      required this.unitNumber});

  factory _$OfferRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferRequestImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final int discount;
  @override
  final int unitNumber;

  @override
  String toString() {
    return 'OfferRequest(id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate, discount: $discount, unitNumber: $unitNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.unitNumber, unitNumber) ||
                other.unitNumber == unitNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, startDate,
      endDate, discount, unitNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferRequestImplCopyWith<_$OfferRequestImpl> get copyWith =>
      __$$OfferRequestImplCopyWithImpl<_$OfferRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferRequestImplToJson(
      this,
    );
  }
}

abstract class _OfferRequest implements OfferRequest {
  const factory _OfferRequest(
      {required final int id,
      final String name,
      final String description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final int discount,
      required final int unitNumber}) = _$OfferRequestImpl;

  factory _OfferRequest.fromJson(Map<String, dynamic> json) =
      _$OfferRequestImpl.fromJson;

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
  int get discount;
  @override
  int get unitNumber;
  @override
  @JsonKey(ignore: true)
  _$$OfferRequestImplCopyWith<_$OfferRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
