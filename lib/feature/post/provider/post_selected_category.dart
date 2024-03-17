import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'post_selected_category.g.dart';

@Riverpod(keepAlive: true)
class PostSelectedCategoryName extends _$PostSelectedCategoryName {
  @override
  String build() {
    ref.onDispose(() {});
    return "";
  }

  void setState(String name) {
    state = name;
  }
}
