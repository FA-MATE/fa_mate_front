import 'package:freezed_annotation/freezed_annotation.dart';
part 'condition_groups_model.g.dart';
part 'condition_groups_model.freezed.dart';

@freezed
class ConditionGroupModel with _$ConditionGroupModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ConditionGroupModel({
    required int id,
    required String name,
    required int orderNo,
  }) = _ConditionGroupModel;

  factory ConditionGroupModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionGroupModelFromJson(json);
}
