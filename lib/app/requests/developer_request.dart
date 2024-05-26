import 'package:freezed_annotation/freezed_annotation.dart';

part 'developer_request.freezed.dart';
part 'developer_request.g.dart';

@freezed
class DeveloperRequest with _$DeveloperRequest {
  const factory DeveloperRequest({
    required String name,
    required String description,
    required String logoUrl,
    required String establishedDate,
  }) = _DeveloperRequest;

  factory DeveloperRequest.fromJson(Map<String, dynamic> json) =>
      _$DeveloperRequestFromJson(json);
}
