import 'package:fa_mate_front/init_models/categories/categories_model.dart';
import 'package:fa_mate_front/init_models/categories/sub_categories_model.dart';
import 'package:fa_mate_front/init_models/conditions/condition_groups_model.dart';
import 'package:fa_mate_front/init_models/conditions/conditions_model.dart';
import 'package:fa_mate_front/init_models/tags/tag_groups_model.dart';
import 'package:fa_mate_front/init_models/tags/tags_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_data_provider.g.dart';

@Riverpod(keepAlive: true)
class GetTags extends _$GetTags {
  @override
  List<TagsModel> build() {
    ref.onDispose(() {});
    return <TagsModel>[];
  }

  void setData(List<TagsModel> data) {
    state = data;
  }
}

@Riverpod(keepAlive: true)
class GetTagGroups extends _$GetTagGroups {
  @override
  List<TagGroupsModel> build() {
    ref.onDispose(() {});
    return <TagGroupsModel>[];
  }

  void setData(List<TagGroupsModel> data) {
    state = data;
  }
}

@Riverpod(keepAlive: true)
class GetCategories extends _$GetCategories {
  @override
  List<CategoriesModel> build() {
    ref.onDispose(() {});
    return <CategoriesModel>[];
  }

  void setData(List<CategoriesModel> data) {
    state = data;
  }
}

@Riverpod(keepAlive: true)
class GetSubCategories extends _$GetSubCategories {
  @override
  List<SubCategoriesModel> build() {
    ref.onDispose(() {});
    return <SubCategoriesModel>[];
  }

  void setData(List<SubCategoriesModel> data) {
    state = data;
  }
}

@Riverpod(keepAlive: true)
class GetConditions extends _$GetConditions {
  @override
  List<ConditionsModel> build() {
    ref.onDispose(() {});
    return <ConditionsModel>[];
  }

  void setData(List<ConditionsModel> data) {
    state = data;
  }
}

@Riverpod(keepAlive: true)
class GetConditionGroups extends _$GetConditionGroups {
  @override
  List<ConditionGroupModel> build() {
    ref.onDispose(() {});
    return <ConditionGroupModel>[];
  }

  void setData(List<ConditionGroupModel> data) {
    state = data;
  }
}
