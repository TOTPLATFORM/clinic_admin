import 'package:freezed_annotation/freezed_annotation.dart';

part 'floor_plan_request.freezed.dart';
part 'floor_plan_request.g.dart';

@freezed
class FloorPlanRequest with _$FloorPlanRequest {
  const factory FloorPlanRequest({
    String? imageUrl,
    String? caption,
    required int propertyId,
  }) = _FloorPlanRequest;

  factory FloorPlanRequest.fromJson(Map<String, dynamic> json) =>
      _$FloorPlanRequestFromJson(json);
}
