import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'more_post_provider.g.dart';

@Riverpod(keepAlive: true)
class SelectMorePostId extends _$SelectMorePostId {
  @override
  int build() {
    ref.onDispose(() {});

    return 0;
  }

  void setPostId(int id) {
    state = id;
  }
}

@riverpod
class PostCount extends _$PostCount {
  @override
  int build() {
    ref.onDispose(() {
      log("dispose postcount");
    });

    return 10;
  }

  void incrementCount() {
    log("increment 발동");
    state += 10;
  }
}

@riverpod
class MorePostIsLoading extends _$MorePostIsLoading {
  @override
  bool build() {
    ref.onDispose(() {
      log("dispose moreISloading");
    });

    return true;
  }

  void setState(bool status) {
    state = status;
  }
}
