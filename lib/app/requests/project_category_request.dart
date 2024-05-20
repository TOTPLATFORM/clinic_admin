import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_category_request.freezed.dart';
part 'project_category_request.g.dart';

@freezed
class ProjectCategoryRequest with _$ProjectCategoryRequest {
  const factory ProjectCategoryRequest({
    required String name,
  }) = _ProjectCategoryRequest;

  factory ProjectCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$ProjectCategoryRequestFromJson(json);
}
