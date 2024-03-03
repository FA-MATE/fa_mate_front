import 'package:fa_mate_front/common/models/tag_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_post_list_model.g.dart';
part 'home_post_list_model.freezed.dart';

@freezed
class HomePostListModel with _$HomePostListModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory HomePostListModel({
    required int id,
    required String title,
    required int categoryId,
    required int subCategoryId,
    required Map<String, dynamic> user,
    required List<Map<String, dynamic>> tags,
    @Default("") String? postImageUrl,
  }) = _HomePostListModel;

  factory HomePostListModel.fromJson(Map<String, dynamic> json) =>
      _$HomePostListModelFromJson(json);
}
