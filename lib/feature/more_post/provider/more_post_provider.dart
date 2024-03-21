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
