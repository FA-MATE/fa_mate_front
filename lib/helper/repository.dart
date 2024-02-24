import 'package:fa_mate_front/common/models/tag_model.dart';
import 'package:fa_mate_front/helper/data_source.dart';

class TagRepository {
  //싱글톤 Datasource를 가져와서 사용
  final DataSource _dataSource = DataSource();
  Future<List<TagModel>> getTagList() async {
    return await _dataSource.getTagList();
  }
}
