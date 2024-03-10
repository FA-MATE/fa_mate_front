import 'package:fa_mate_front/init_models/conditions/condition_groups_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conditions_model.freezed.dart';
part 'conditions_model.g.dart';

@freezed
class ConditionsModel with _$ConditionsModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ConditionsModel(
      {required int id,
      required String name,
      required int orderNo,
      required ConditionGroupModel conditionGroup}) = _ConditionsModel;

  factory ConditionsModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionsModelFromJson(json);
}
