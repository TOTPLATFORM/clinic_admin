import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_add_client_request.freezed.dart';
part 'input_add_client_request.g.dart';

@freezed
class InputAddOrUpdateClientRequest with _$InputAddOrUpdateClientRequest {
  factory InputAddOrUpdateClientRequest({
    String? firstName,
    String? lastName,
    String? dateOfBirth,
    String? gender,
    String? phone,
    String? email,
    String? userName,
    String? password,
    int? budget,
    String? preferences,
  }) = _InputAddOrUpdateClientRequest;

  factory InputAddOrUpdateClientRequest.fromJson(Map<String, dynamic> json) =>
      _$InputAddOrUpdateClientRequestFromJson(json);
}
