import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'post_category_provider.g.dart';

@Riverpod(keepAlive: true)
class PostUploadCategoryIndex extends _$PostUploadCategoryIndex {
  @override
  int build() {
    ref.onDispose(() {
      log("dispose category index");
    });
    return 0;
  }

  void setupCategoryIndex(int index) {
    log("index : $index");
    state = index;
  }
}
