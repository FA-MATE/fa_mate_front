// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'tag_model.g.dart';
part 'tag_model.freezed.dart';

@freezed
class TagModel with _$TagModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TagModel({
    required int id,
    required int tagGroupId,
    required String name,
    required int orderNo,
    @Default("") String? createdAt,
    @Default("") String? updatedAt,
  }) = _TagModel;

  factory TagModel.fromJson(Map<String, dynamic> json) =>
      _$TagModelFromJson(json);
}
