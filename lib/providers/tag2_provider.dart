import 'package:fa_mate_front/common/models/tag_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'tag2_provider.g.dart';

@Riverpod(keepAlive: true)
class GetTags2 extends _$GetTags2 {
  @override
  List<TagListModel> build() {
    ref.onDispose(() {});
    return <TagListModel>[];
  }

  void initTag(List<TagListModel> model) {
    state = model;
  }
}
