import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_request_dto.freezed.dart';
part 'location_request_dto.g.dart';

@freezed
class LocationRequestDto with _$LocationRequestDto {
  factory LocationRequestDto({
    required String name,
    double? latitude,
    double? longitude,
    String? address,
  }) = _LocationRequestDto;

  factory LocationRequestDto.fromJson(Map<String, dynamic> json) =>
      _$LocationRequestDtoFromJson(json);
}
