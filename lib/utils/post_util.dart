import 'dart:developer';
import 'package:fa_mate_front/feature/post/models/post_upload_model.dart';
import 'package:fa_mate_front/init_models/conditions/condition_groups_model.dart';
import 'package:fa_mate_front/init_models/conditions/conditions_model.dart';
import 'package:fa_mate_front/init_models/tags/tag_groups_model.dart';
import 'package:fa_mate_front/init_models/tags/tags_model.dart';

class PostUtils {
  static final PostUtils _instance = PostUtils._();
  factory PostUtils() => _instance;
  PostUtils._();

//** 投稿に含まれているタグをChachedタグから探る */
  List<TagsModel> findTag(
      {required List<Map<String, dynamic>> tags,
      required List<TagsModel> cachedTags}) {
    List<TagsModel> resultTags = [];
    if (tags.isNotEmpty) {
      resultTags = tags
          .map((tag) =>
              cachedTags.firstWhere((cachedTag) => cachedTag.id == tag["id"]))
          .toList();
    }
    return resultTags;
  }

  List<TagsModel>? tagCheck(dynamic model, int tagGroupId) {
    int modelIndex;
    final editModel = model.tags?.toList();
    try {
      modelIndex =
          model.tags?.indexWhere((tag) => tag.tagGroup.id == tagGroupId) ?? -1;
      if (modelIndex.isNegative) {
      } else {
        editModel?.removeAt(modelIndex);
      }
    } catch (e) {
      log("try${e.toString()}");
    }

    return editModel;
  }

  int? tagNullCehck(dynamic postUploadModel, int tagGroupId) {
    int? index;

    index = postUploadModel.tags
        ?.indexWhere((tag) => tag.tagGroup.id == tagGroupId);
    return index;
  }

  int? screenTagNullCheck(dynamic postUploadModel, int tagGroupId) {
    int index = postUploadModel.tags
            ?.indexWhere((tag) => tag.tagGroup.id == tagGroupId) ??
        -1;
    if (index != -1) {
      return index;
    } else {
      return null;
    }
  }

  String searchCategoryName(dynamic list, int categoryId) {
    String result = "";
    result = list.firstWhere((data) => data.id == categoryId).name;

    return result;
  }

  PostUploadModel initUploadTagConditions(int categoryId) {
    final model = PostUploadModel(
      categoryId: categoryId,
      tags: [
        const TagsModel(
          id: 68,
          name: "不明",
          orderNo: 1,
          tagGroup: TagGroupsModel(
            id: 11,
            name: "性別",
            orderNo: 3,
          ),
        ),
        const TagsModel(
          id: 71,
          name: "未接種",
          orderNo: 1,
          tagGroup: TagGroupsModel(
            id: 12,
            name: "ワクチン接種",
            orderNo: 4,
          ),
        ),
      ],
      conditions: [
        const ConditionsModel(
          id: 21,
          name: "条件なし",
          orderNo: 1,
          conditionGroup: ConditionGroupModel(id: 7, name: "年齢", orderNo: 1),
        ),
        const ConditionsModel(
          id: 24,
          name: "条件なし",
          orderNo: 1,
          conditionGroup: ConditionGroupModel(id: 8, name: "居住形態", orderNo: 2),
        ),
        const ConditionsModel(
          id: 28,
          name: "条件なし",
          orderNo: 1,
          conditionGroup: ConditionGroupModel(
            id: 9,
            name: "今後のケア",
            orderNo: 3,
          ),
        ),
      ],
    );
    return model;
  }
}
