// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'tag_model.g.dart';
part 'tag_model.freezed.dart';

@freezed
class TagListModel with _$TagListModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TagListModel({
    required int id,
    required String name,
    required int orderNo,
    required Map<String, dynamic> tagGroup,
  }) = _TagListModel;

  factory TagListModel.fromJson(Map<String, dynamic> json) =>
      _$TagListModelFromJson(json);
}
