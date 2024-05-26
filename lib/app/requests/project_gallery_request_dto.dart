import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'project_gallery_request_dto.freezed.dart';
part 'project_gallery_request_dto.g.dart';

@freezed
class ProjectGalleryRequestDto with _$ProjectGalleryRequestDto {
  factory ProjectGalleryRequestDto({
    @Default('') String imageUrl,
    @Default('') String caption,
  }) = _ProjectGalleryRequestDto;

  factory ProjectGalleryRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectGalleryRequestDtoFromJson(json);
}
