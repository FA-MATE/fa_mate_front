import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'post_category_provider.g.dart';

@Riverpod(keepAlive: true)
class PostUploadCategoryIndex extends _$PostUploadCategoryIndex {
  @override
  int build(int index) {
    return index;
  }
}
