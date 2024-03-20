import 'package:fa_mate_front/feature/home/models/home_post_list_model.dart';
import 'package:fa_mate_front/feature/post/models/post_detail_model.dart';
import 'package:fa_mate_front/helper/data_source.dart';
import 'package:fa_mate_front/init_models/init_model.dart';
import 'package:fa_mate_front/init_models/tags/tags_model.dart';

final DataSource _dataSource = DataSource();

class TagRepository {
  //싱글톤 Datasource를 가져와서 사용
  Future<List<TagsModel>> getTagList() async {
    return await _dataSource.getTagList();
  }
}

class InitRepository {
  //싱글톤 Datasource를 가져와서 사용
  Future<InitModel> getInitData() async {
    return await _dataSource.initAppDataList();
  }
}

//** Posts Repositories */
class PostRepository {
  Future<List<HomePostListModel>> getPostList() async {
    return await _dataSource.getPostList();
  }

  Future<List<HomePostListModel>> getPostJoinCategory(
      int categoryId, int count) async {
    return await _dataSource.getPostJoinCategory(categoryId, count);
  }

  Future<PostDetailModel> getPost(int postId) async {
    return await _dataSource.getPost(postId);
  }
}
