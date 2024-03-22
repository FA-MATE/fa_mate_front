import 'package:fa_mate_front/feature/home/models/home_post_list_model.dart';
import 'package:fa_mate_front/feature/more_post/provider/more_post_provider.dart';
import 'package:fa_mate_front/helper/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_post_list_provider.g.dart';

@riverpod
class GetPostList extends _$GetPostList {
  final _postRepository = PostRepository();
  @override
  Future<List<HomePostListModel>> build() {
    return _postRepository.getPostList();
  }
}

@riverpod
class GetPostCategoryList extends _$GetPostCategoryList {
  final _postRepository = PostRepository();
  @override
  Future<List<HomePostListModel>> build({int? categoryId, int? count}) async {
    final datas = await _postRepository.getPostJoinCategory(
        categoryId ?? -1, count ?? 10);
    final postCount = ref.read(postCountProvider);
    if (datas.length >= postCount) {
      ref.read(morePostIsLoadingProvider.notifier).setState(true);
    } else {
      ref.read(morePostIsLoadingProvider.notifier).setState(false);
    }
    return datas;
  }
}
