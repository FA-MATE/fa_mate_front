import 'package:fa_mate_front/feature/post/models/post_detail_model.dart';
import 'package:fa_mate_front/helper/repository.dart';
import 'package:fa_mate_front/init_models/categories/sub_categories_model.dart';
import 'package:fa_mate_front/providers/app_data_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'post_detail_provider.g.dart';

@riverpod
class PostDetailId extends _$PostDetailId {
  @override
  int build() => 0;

  void setState(int postId) {
    state = postId;
  }
}

//** 選択したアイテムの詳細画面Model */
@riverpod
class PostDetailData extends _$PostDetailData {
  final _postRepository = PostRepository();
  @override
  Future<PostDetailModel> build(int postId) async {
    final data = await _postRepository.getPost(postId);
    ref.read(isLoadingProvider.notifier).completedLoading();
    return data;
  }
}

@riverpod
class IsLoading extends _$IsLoading {
  @override
  bool build() {
    return false;
  }

  void completedLoading() {
    state = true;
  }
}

@riverpod
class GetSubCategoryList extends _$GetSubCategoryList {
  @override
  List<SubCategoriesModel> build(int categoryId) {
    List<SubCategoriesModel> subCategories = [];
    final cachedSubCategories = ref.watch(getSubCategoriesProvider);
    subCategories = cachedSubCategories
        .where((sub) => sub.categoryId == categoryId)
        .toList();
    return subCategories;
  }
}

@riverpod
class GetSelectTagList extends _$GetSelectTagList {
  @override
  dynamic build(int tagGroupId) {
    dynamic selectTagList;
    final tagList = ref.watch(getTagsProvider);
    selectTagList = tagList.where((tag) => tag.tagGroup.id == tagGroupId);
    return selectTagList;
  }
}

@riverpod
class GetSelectCondisionList extends _$GetSelectCondisionList {
  @override
  dynamic build(int conditionGroupId) {
    dynamic selectConditionList;
    final conditionList = ref.watch(getConditionsProvider);
    selectConditionList = conditionList
        .where((condition) => condition.conditionGroup.id == conditionGroupId);
    return selectConditionList;
  }
}
