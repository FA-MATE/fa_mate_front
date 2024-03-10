import 'package:fa_mate_front/init_models/tags/tags_model.dart';

class PostUtils {
  static final PostUtils _instance = PostUtils._();
  factory PostUtils() => _instance;
  PostUtils._();

//** 投稿に含まれているタグをChachedタグから探る */
  List<TagsModel> findTag(
      {required List<Map<String, dynamic>> tags,
      required List<TagsModel> cachedTags}) {
    List<TagsModel> resultTags = [];
    if (tags.isNotEmpty) {
      resultTags = tags
          .map((tag) =>
              cachedTags.firstWhere((cachedTag) => cachedTag.id == tag["id"]))
          .toList();
    }
    return resultTags;
  }
}
