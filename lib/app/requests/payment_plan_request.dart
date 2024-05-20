import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_plan_request.freezed.dart';
part 'payment_plan_request.g.dart';

@freezed
class PaymentPlanRequest with _$PaymentPlanRequest {
  const factory PaymentPlanRequest({
    @Default('') String name,
    @Default('') String description,
    @Default('') String terms,
    required int downPaymentPercentage,
    required int installmentCount,
    required int interestRate,
  }) = _PaymentPlanRequest;

  factory PaymentPlanRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentPlanRequestFromJson(json);
}
