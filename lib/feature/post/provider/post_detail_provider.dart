import 'package:fa_mate_front/feature/post/models/post_detail_model.dart';
import 'package:fa_mate_front/helper/repository.dart';
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
