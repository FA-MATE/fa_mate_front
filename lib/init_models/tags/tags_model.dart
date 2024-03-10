import 'package:fa_mate_front/init_models/tags/tag_groups_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tags_model.g.dart';
part 'tags_model.freezed.dart';

@freezed
class TagsModel with _$TagsModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TagsModel({
    required int id,
    required String name,
    required int orderNo,
    required TagGroupsModel tagGroup,
  }) = _TagsModel;

  factory TagsModel.fromJson(Map<String, dynamic> json) =>
      _$TagsModelFromJson(json);
}
