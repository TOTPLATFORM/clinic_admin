import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_request.freezed.dart';
part 'event_request.g.dart';

@freezed
class EventRequest with _$EventRequest {
  const factory EventRequest({
    required int id,
    required String name,
    required String description,
    required DateTime date,
    required String location,
    required int projectId,
  }) = _EventRequest;

  factory EventRequest.fromJson(Map<String, dynamic> json) =>
      _$EventRequestFromJson(json);
}
