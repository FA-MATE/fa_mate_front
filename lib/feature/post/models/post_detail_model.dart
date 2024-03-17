import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_detail_model.g.dart';
part 'post_detail_model.freezed.dart';

@freezed
class PostDetailModel with _$PostDetailModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PostDetailModel({
    int? id,
    required String title,
    required String body,
    int? categoryId,
    int? subCategoryId,
    Map<String, dynamic>? user,
    List<Map<String, dynamic>>? tags,
    List<Map<String, dynamic>>? conditions,
    List<Map<String, dynamic>>? postImages,
    String? createdAt,
    String? updatedAt,
  }) = _PostDetailModel;

  factory PostDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PostDetailModelFromJson(json);
}
