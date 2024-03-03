import 'package:fa_mate_front/feature/home/models/home_post_list_model.dart';
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
  Future<List<HomePostListModel>> build({int? categoryId}) {
    return _postRepository.getPostJoinCategory(categoryId ?? -1);
  }
}
