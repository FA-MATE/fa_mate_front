import 'package:fa_mate_front/common/models/tag_model.dart';
import 'package:fa_mate_front/helper/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'tag_provider.g.dart';

@riverpod
class GetTags extends _$GetTags {
  final _tagRepository = TagRepository();

  @override
  Future<List<TagListModel>> build() {
    return _tagRepository.getTagList();
  }
}
