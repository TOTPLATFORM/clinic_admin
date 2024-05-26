// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_plan_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentPlanRequest _$PaymentPlanRequestFromJson(Map<String, dynamic> json) {
  return _PaymentPlanRequest.fromJson(json);
}

/// @nodoc
mixin _$PaymentPlanRequest {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get terms => throw _privateConstructorUsedError;
  int get downPaymentPercentage => throw _privateConstructorUsedError;
  int get installmentCount => throw _privateConstructorUsedError;
  int get interestRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentPlanRequestCopyWith<PaymentPlanRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentPlanRequestCopyWith<$Res> {
  factory $PaymentPlanRequestCopyWith(
          PaymentPlanRequest value, $Res Function(PaymentPlanRequest) then) =
      _$PaymentPlanRequestCopyWithImpl<$Res, PaymentPlanRequest>;
  @useResult
  $Res call(
      {String name,
      String description,
      String terms,
      int downPaymentPercentage,
      int installmentCount,
      int interestRate});
}

/// @nodoc
class _$PaymentPlanRequestCopyWithImpl<$Res, $Val extends PaymentPlanRequest>
    implements $PaymentPlanRequestCopyWith<$Res> {
  _$PaymentPlanRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? terms = null,
    Object? downPaymentPercentage = null,
    Object? installmentCount = null,
    Object? interestRate = null,
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
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String,
      downPaymentPercentage: null == downPaymentPercentage
          ? _value.downPaymentPercentage
          : downPaymentPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      installmentCount: null == installmentCount
          ? _value.installmentCount
          : installmentCount // ignore: cast_nullable_to_non_nullable
              as int,
      interestRate: null == interestRate
          ? _value.interestRate
          : interestRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentPlanRequestImplCopyWith<$Res>
    implements $PaymentPlanRequestCopyWith<$Res> {
  factory _$$PaymentPlanRequestImplCopyWith(_$PaymentPlanRequestImpl value,
          $Res Function(_$PaymentPlanRequestImpl) then) =
      __$$PaymentPlanRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String terms,
      int downPaymentPercentage,
      int installmentCount,
      int interestRate});
}

/// @nodoc
class __$$PaymentPlanRequestImplCopyWithImpl<$Res>
    extends _$PaymentPlanRequestCopyWithImpl<$Res, _$PaymentPlanRequestImpl>
    implements _$$PaymentPlanRequestImplCopyWith<$Res> {
  __$$PaymentPlanRequestImplCopyWithImpl(_$PaymentPlanRequestImpl _value,
      $Res Function(_$PaymentPlanRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? terms = null,
    Object? downPaymentPercentage = null,
    Object? installmentCount = null,
    Object? interestRate = null,
  }) {
    return _then(_$PaymentPlanRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String,
      downPaymentPercentage: null == downPaymentPercentage
          ? _value.downPaymentPercentage
          : downPaymentPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      installmentCount: null == installmentCount
          ? _value.installmentCount
          : installmentCount // ignore: cast_nullable_to_non_nullable
              as int,
      interestRate: null == interestRate
          ? _value.interestRate
          : interestRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentPlanRequestImpl implements _PaymentPlanRequest {
  const _$PaymentPlanRequestImpl(
      {this.name = '',
      this.description = '',
      this.terms = '',
      required this.downPaymentPercentage,
      required this.installmentCount,
      required this.interestRate});

  factory _$PaymentPlanRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentPlanRequestImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String terms;
  @override
  final int downPaymentPercentage;
  @override
  final int installmentCount;
  @override
  final int interestRate;

  @override
  String toString() {
    return 'PaymentPlanRequest(name: $name, description: $description, terms: $terms, downPaymentPercentage: $downPaymentPercentage, installmentCount: $installmentCount, interestRate: $interestRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentPlanRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.terms, terms) || other.terms == terms) &&
            (identical(other.downPaymentPercentage, downPaymentPercentage) ||
                other.downPaymentPercentage == downPaymentPercentage) &&
            (identical(other.installmentCount, installmentCount) ||
                other.installmentCount == installmentCount) &&
            (identical(other.interestRate, interestRate) ||
                other.interestRate == interestRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, terms,
      downPaymentPercentage, installmentCount, interestRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentPlanRequestImplCopyWith<_$PaymentPlanRequestImpl> get copyWith =>
      __$$PaymentPlanRequestImplCopyWithImpl<_$PaymentPlanRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentPlanRequestImplToJson(
      this,
    );
  }
}

abstract class _PaymentPlanRequest implements PaymentPlanRequest {
  const factory _PaymentPlanRequest(
      {final String name,
      final String description,
      final String terms,
      required final int downPaymentPercentage,
      required final int installmentCount,
      required final int interestRate}) = _$PaymentPlanRequestImpl;

  factory _PaymentPlanRequest.fromJson(Map<String, dynamic> json) =
      _$PaymentPlanRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get terms;
  @override
  int get downPaymentPercentage;
  @override
  int get installmentCount;
  @override
  int get interestRate;
  @override
  @JsonKey(ignore: true)
  _$$PaymentPlanRequestImplCopyWith<_$PaymentPlanRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
