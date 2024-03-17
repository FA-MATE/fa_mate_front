import 'package:fa_mate_front/init_models/conditions/conditions_model.dart';
import 'package:fa_mate_front/init_models/tags/tags_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_upload_model.g.dart';
part 'post_upload_model.freezed.dart';

@freezed
class PostUploadModel with _$PostUploadModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PostUploadModel({
    String? title,
    String? body,
    int? categoryId,
    int? subCategoryId,
    Map<String, dynamic>? user,
    List<TagsModel>? tags,
    List<ConditionsModel>? conditions,
    List<Map<String, dynamic>>? postImages,
  }) = _PostUploadModel;

  factory PostUploadModel.fromJson(Map<String, dynamic> json) =>
      _$PostUploadModelFromJson(json);
}
