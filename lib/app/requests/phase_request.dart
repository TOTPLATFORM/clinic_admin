import 'package:freezed_annotation/freezed_annotation.dart';

part 'phase_request.freezed.dart';
part 'phase_request.g.dart';

@freezed
class PhaseRequest with _$PhaseRequest {
  const factory PhaseRequest({
    required int id,
    required String name,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required int projectId,
  }) = _PhaseRequest;

  factory PhaseRequest.fromJson(Map<String, dynamic> json) =>
      _$PhaseRequestFromJson(json);
}
