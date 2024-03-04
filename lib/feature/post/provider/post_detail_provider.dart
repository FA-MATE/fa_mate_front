import 'dart:developer';

import 'package:fa_mate_front/feature/post/models/post_detail_model.dart';
import 'package:fa_mate_front/helper/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'post_detail_provider.g.dart';

@riverpod
class PostDetailId extends _$PostDetailId {
  @override
  int build() => 0;

  void setState(int postId) {
    log("idididid :$postId");
    state = postId;
  }
}

@riverpod
class PostDetailData extends _$PostDetailData {
  final _postRepository = PostRepository();
  @override
  Future<PostDetailModel> build(int postId) {
    return _postRepository.getPost(postId);
  }
}
