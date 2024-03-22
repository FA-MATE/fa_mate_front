import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fa_mate_front/feature/home/models/home_post_list_model.dart';
import 'package:fa_mate_front/feature/post/models/post_detail_model.dart';
import 'package:fa_mate_front/init_models/init_model.dart';
import 'package:fa_mate_front/init_models/tags/tags_model.dart';

//SingleTone DataSource
class DataSource {
  //DataSource 클래스의 인스턴스인 _instance를 private static final 변수로 선언합니다.
  //여기서 DataSource._()은 private 생성자를 호출하는 것으로, 이 클래스를 외부에서 직접 생성하지 못하게 합니다.
  //이 과정에서 _instance는 처음 한 번만 생성되며, 이후에는 동일한 인스턴스를 재사용합니다.
  static final DataSource _instance = DataSource._();

  //factory 생성자를 사용하여 _instance를 반환합니다. factory 생성자는 항상 새로운 인스턴스를 생성하지 않고,
  //기존 인스턴스를 반환할 수 있습니다. 따라서 이 코드를 통해 DataSource()를 호출할 때마다 동일한 _instance가 반환됩니다.
  factory DataSource() => _instance;

  //이것은 private 생성자입니다. 이 생성자는 클래스 내부에서만 호출할 수 있으므로, 이 클래스가 다른 곳에서 인스턴스화되는 것을 방지합니다.
  DataSource._();

  Dio dio = Dio(BaseOptions(baseUrl: "https://fa-mate-rails.onrender.com/"));
//** Tag  */
  Future<List<TagsModel>> getTagList() async {
    try {
      Response res = await dio.get('tags.json');
      List<TagsModel> tags = [];
      if (res.statusCode == 200) {
        for (var tag in res.data) {
          tags.add(TagsModel.fromJson(tag));
        }

        return tags;
      } else {
        return <TagsModel>[];
      }
    } catch (e) {
      Exception(e);
    } finally {
      // dio.close();
    }
    return <TagsModel>[];
  }

  Future<dynamic> getTag(int tagId) async {
    try {
      Response res = await dio.get('tags/$tagId.json');
      late TagsModel tag;
      if (res.statusCode == 200) {
        tag = TagsModel.fromJson(res.data);

        return tag;
      } else {
        return TagsModel;
      }
    } catch (e) {
      Exception(e);
    } finally {
      // dio.close();
    }
    return TagsModel;
  }

  Future<List<HomePostListModel>> getPostList() async {
    try {
      Response res = await dio.get("posts.json");
      List<HomePostListModel> postList = [];
      if (res.statusCode == 200) {
        for (var data in res.data) {
          postList.add(HomePostListModel.fromJson(data));
        }

        return postList;
      } else {
        return <HomePostListModel>[];
      }
    } catch (e) {
      Exception(e);
    } finally {
      // dio.close();
    }
    return <HomePostListModel>[];
  }

  Future<InitModel> initAppDataList() async {
    try {
      Response res = await dio.get("app_data");
      late InitModel initData;
      if (res.statusCode == 200) {
        initData = InitModel.fromJson(res.data);
      }

      return initData;
    } catch (e) {
      Exception(e);
    } finally {
      // dio.close();
    }
    throw ();
  }

  Future<List<HomePostListModel>> getPostJoinCategory(
      int categoryId, int count) async {
    try {
      Response res = await dio
          .get("posts.json?per=$count&page=1&category_id=$categoryId")
          .timeout(const Duration(seconds: 30));
      List<HomePostListModel> postList = [];
      if (res.statusCode == 200) {
        for (var data in res.data) {
          postList.add(HomePostListModel.fromJson(data));
        }
        return postList;
      } else {
        return <HomePostListModel>[];
      }
    } on TimeoutException catch (e) {
      log("Timeout");
      Exception(e);
    } finally {
      // dio.close();
    }
    return <HomePostListModel>[];
  }

  Future<PostDetailModel> getPost(int postId) async {
    try {
      Response res = await dio.get("posts/$postId.json");
      if (res.statusCode == 200) {
        return PostDetailModel.fromJson(res.data);
      } else {
        throw Exception("Error fetching post details: ${res.statusCode}");
      }
    } catch (e) {
      // Handle other exceptions
      throw Exception("Error!!!!!!!!!!!!!: $e");
    }
  }
}
