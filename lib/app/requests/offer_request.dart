import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_request.freezed.dart';
part 'offer_request.g.dart';

@freezed
class OfferRequest with _$OfferRequest {
  const factory OfferRequest({
    required int id,
    @Default('') String name,
    @Default('') String description,
    required DateTime startDate,
    required DateTime endDate,
    required int discount,
    required int unitNumber,
  }) = _OfferRequest;

  factory OfferRequest.fromJson(Map<String, dynamic> json) =>
      _$OfferRequestFromJson(json);
}
