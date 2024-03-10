import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_groups_model.g.dart';
part 'tag_groups_model.freezed.dart';

@freezed
class TagGroupsModel with _$TagGroupsModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TagGroupsModel({
    required int id,
    required String name,
    required int orderNo,
  }) = _TagGroupsModel;

  factory TagGroupsModel.fromJson(Map<String, dynamic> json) =>
      _$TagGroupsModelFromJson(json);
}
