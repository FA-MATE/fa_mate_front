import 'package:fa_mate_front/init_models/categories/categories_model.dart';
import 'package:fa_mate_front/init_models/categories/sub_categories_model.dart';
import 'package:fa_mate_front/init_models/conditions/condition_groups_model.dart';
import 'package:fa_mate_front/init_models/conditions/conditions_model.dart';
import 'package:fa_mate_front/init_models/tags/tag_groups_model.dart';
import 'package:fa_mate_front/init_models/tags/tags_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'init_model.freezed.dart';
part 'init_model.g.dart';

@freezed
class InitModel with _$InitModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory InitModel({
    required List<CategoriesModel> categories,
    required List<SubCategoriesModel> subCategories,
    required List<ConditionGroupModel> conditionGroups,
    required List<ConditionsModel> conditions,
    required List<TagGroupsModel> tagGroups,
    required List<TagsModel> tags,
  }) = _InitModel;

  factory InitModel.fromJson(Map<String, dynamic> json) =>
      _$InitModelFromJson(json);
}
