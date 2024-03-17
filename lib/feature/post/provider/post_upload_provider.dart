import 'package:fa_mate_front/feature/post/models/post_upload_model.dart';
import 'package:fa_mate_front/utils/post_util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'post_upload_provider.g.dart';

//** PostアップロードデータモデルProvider */
@Riverpod(keepAlive: true)
class PostUpload extends _$PostUpload {
  final postUtils = PostUtils();

  @override
  PostUploadModel build() {
    ref.onDispose(() {});

    PostUploadModel model = const PostUploadModel();
    return model;
  }

  void setData(PostUploadModel model) {
    state = state.copyWith(
      title: model.title,
      body: model.body,
      categoryId: model.categoryId,
      subCategoryId: model.subCategoryId,
      conditions: model.conditions,
      tags: model.tags,
      postImages: model.postImages,
      user: model.user,
    );
  }
}
