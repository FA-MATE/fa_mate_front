import 'package:fa_mate_front/helper/repository.dart';
import 'package:fa_mate_front/init_models/init_model.dart';
import 'package:fa_mate_front/providers/app_data_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'init_data_provider.g.dart';

final _initRepository = InitRepository();

@riverpod
class GetInitData extends _$GetInitData {
  @override
  Future<InitModel> build() async {
    final data = await _initRepository.getInitData();
    ref.read(getTagsProvider.notifier).setData(data.tags);
    ref.read(getTagGroupsProvider.notifier).setData(data.tagGroups);
    ref.read(getCategoriesProvider.notifier).setData(data.categories);
    ref.read(getSubCategoriesProvider.notifier).setData(data.subCategories);
    ref.read(getConditionsProvider.notifier).setData(data.conditions);
    ref.read(getConditionGroupsProvider.notifier).setData(data.conditionGroups);
    return data;
  }
}
