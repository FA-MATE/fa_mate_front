import 'package:fa_mate_front/common/models/tag_model.dart';
import 'package:fa_mate_front/feature/home/models/home_post_list_model.dart';
import 'package:fa_mate_front/feature/post/models/post_detail_model.dart';
import 'package:fa_mate_front/helper/data_source.dart';

final DataSource _dataSource = DataSource();

class TagRepository {
  //싱글톤 Datasource를 가져와서 사용
  Future<List<TagListModel>> getTagList() async {
    return await _dataSource.getTagList();
  }
}

//** Posts Repositories */
class PostRepository {
  Future<List<HomePostListModel>> getPostList() async {
    return await _dataSource.getPostList();
  }

  Future<List<HomePostListModel>> getPostJoinCategory(int categoryId) async {
    return await _dataSource.getPostJoinCategory(categoryId);
  }

  Future<PostDetailModel> getPost(int postId) async {
    return await _dataSource.getPost(postId);
  }
}
