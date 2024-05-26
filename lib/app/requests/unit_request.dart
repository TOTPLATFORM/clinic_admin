import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_request.freezed.dart';
part 'unit_request.g.dart';

@freezed
class UnitRequest with _$UnitRequest {
  const factory UnitRequest({
    required int unitNumber,
    required int floor,
    required double size,
    required int bedrooms,
    required int bathrooms,
    required String status,
    required int propertyId,
    required int paymentPlanId,
  }) = _UnitRequest;

  factory UnitRequest.fromJson(Map<String, dynamic> json) =>
      _$UnitRequestFromJson(json);
}
