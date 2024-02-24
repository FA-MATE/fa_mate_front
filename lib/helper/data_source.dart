import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:fa_mate_front/common/models/tag_model.dart';

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

//** Tag  */
  Future<List<TagModel>> getTagList() async {
    Dio dio = Dio();
    try {
      Response res = await dio.get('https://fa-mate-rails.onrender.com/tags/1');
      List<TagModel> tags = [];
      if (res.statusCode == 200) {
        tags.add(TagModel.fromJson(res.data));

        log("Tag!!! ${tags.toString()}");
        return tags;
      } else {
        return <TagModel>[];
      }
    } catch (e) {
      Exception(e);
    } finally {
      dio.close();
    }
    return <TagModel>[];
  }
}
