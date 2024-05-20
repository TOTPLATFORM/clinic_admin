import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_request.freezed.dart';
part 'city_request.g.dart';

@freezed
class CityRequest with _$CityRequest {
  const factory CityRequest({
    required String name,
    String? image,
  }) = _CityRequest;

  factory CityRequest.fromJson(Map<String, dynamic> json) =>
      _$CityRequestFromJson(json);
}
