import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_gallery_request.freezed.dart';
part 'property_gallery_request.g.dart';

@freezed
class PropertyGalleryRequest with _$PropertyGalleryRequest {
  const factory PropertyGalleryRequest({
    required String imageUrl,
    required String caption,
  }) = _PropertyGalleryRequest;

  factory PropertyGalleryRequest.fromJson(Map<String, dynamic> json) =>
      _$PropertyGalleryRequestFromJson(json);
}
