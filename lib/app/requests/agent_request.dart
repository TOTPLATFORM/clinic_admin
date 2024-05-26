import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_request.freezed.dart';
part 'agent_request.g.dart';

@freezed
class AgentRequest with _$AgentRequest {
  const factory AgentRequest({
    required String firstName,
    required String lastName,
    required String dateOfBirth,
    required String gender,
    required String phone,
    required String email,
    required String userName,
    required String password,
    required int projectId,
  }) = _AgentRequest;

  factory AgentRequest.fromJson(Map<String, dynamic> json) =>
      _$AgentRequestFromJson(json);
}
