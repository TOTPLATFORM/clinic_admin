import 'package:freezed_annotation/freezed_annotation.dart';

part 'facility_request.freezed.dart';
part 'facility_request.g.dart';

@freezed
class FacilityRequest with _$FacilityRequest {
  const factory FacilityRequest({
    required String name,
    required String description,
  }) = _FacilityRequest;
  
  factory FacilityRequest.fromJson(Map<String, dynamic> json) =>
      _$FacilityRequestFromJson(json);
}
