import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_detail_model.g.dart';
part 'post_detail_model.freezed.dart';

@freezed
class PostDetailModel with _$PostDetailModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PostDetailModel({
    required int id,
    required String title,
    required String body,
    required int categoryId,
    required int subCategoryId,
    required Map<String, dynamic> user,
    required List<Map<String, dynamic>> tags,
    required List<Map<String, dynamic>> conditions,
    required List<Map<String, dynamic>> postImages,
    required String createdAt,
    required String updatedAt,
  }) = _PostDetailModel;

  factory PostDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PostDetailModelFromJson(json);
}
