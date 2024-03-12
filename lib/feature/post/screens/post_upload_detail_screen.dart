// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fa_mate_front/feature/post/post_category_provider.dart';
import 'package:fa_mate_front/feature/post/provider/post_detail_provider.dart';
import 'package:fa_mate_front/feature/post/widgets/my_post_infomation_tags_widget.dart';
import 'package:fa_mate_front/feature/post/widgets/my_post_infomation_widget.dart';
import 'package:fa_mate_front/init_models/categories/categories_model.dart';
import 'package:fa_mate_front/providers/app_data_provider.dart';
import 'package:fa_mate_front/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/main.dart';

class PostDetailUploadScreen extends ConsumerWidget {
// class PostDetailUploadScreen extends StatelessWidget {

  final int categoryId;

  const PostDetailUploadScreen({super.key, required this.categoryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryIndex =
        ref.watch(postUploadCategoryIndexProvider(categoryId));

    //** 분양자 정보&분양동물 정보 */
    //** category 리스트 */
    final categories = ref.watch(getCategoriesProvider);
    //** 선택된 카테고리 모델 */
    CategoriesModel categoryModel =
        ref.watch(getCategoryItemProvider(categoryIndex));
    //** 지역  */
    final selectRegionList = ref.watch(getSelectTagListProvider(22));
    //** 분양동물 정보 */
    final selectPetAgeList = ref.watch(getSelectTagListProvider(23));
    //** 성별  */
    final selectGenderList = ref.watch(getSelectTagListProvider(24));

    // ** 필수조건 */
    //** 나이  */
    final selectAgeList = ref.watch(getSelectCondisionListProvider(32));
    //** 거주형태  */
    final selectResidenceList = ref.watch(getSelectCondisionListProvider(33));
    //** 애프터케어  */
    final selectAfterCareList = ref.watch(getSelectCondisionListProvider(34));

    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black.withOpacity(0.5),
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
        title: Text(
          SelectInfomation.inputInfomation.toStringName(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: mq.width * .04,
              ),
              height: mq.height * .1,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, index) => Gap(mq.width * .05),
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      left: index == 0 ? mq.width * .04 : 0,
                      right: index == 9 ? mq.width * .04 : 0,
                    ),
                    width: mq.height * .1,
                    height: mq.height * .1,
                    color: AppColors.grey,
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      size: 30,
                    ),
                  );
                },
              ),
            ),
            Gap(mq.height * .05),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mq.width * .04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextDefaultWidget(
                    title: SelectInfomation.title.toStringName(),
                  ),
                  Gap(mq.height * .01),
                  TextField(
                    decoration: InputDecoration(
                      hintText: SelectInfomation.inputTitle.toStringName(),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    width: double.infinity,
                    child: const TextDefaultWidget(
                      title: "0/40",
                      fontColor: Colors.black54,
                    ),
                  ),
                  Gap(mq.height * .02),
                  TextDefaultWidget(
                    title: SelectInfomation.infomation.toStringName(),
                  ),
                  const Divider(),
                  MyPostInfomationCategories(
                    title: SelectInfomation.categories.toStringName(),
                    selectItem: categoryModel.name,
                    isIconData: true,
                    subCategories: categories,
                  ),
                  const Divider(),
                  MyPostInfomationCategories(
                    title: SelectInfomation.types.toStringName(),
                    isIconData: true,
                    subCategories: categories,
                  ),
                  const Divider(),
                  MyPostInfomationCategories(
                    title: SelectInfomation.region.toStringName(),
                    isIconData: true,
                    subCategories: selectRegionList,
                  ),
                  const Divider(),
                  MyPostInfomationCategories(
                    title: SelectInfomation.age.toStringName(),
                    isIconData: true,
                    subCategories: selectPetAgeList,
                  ),
                  const Divider(),
                  MyPostInfomationTags(
                    title: SelectInfomation.gender.toStringName(),
                    isIconData: false,
                    tags: selectGenderList.toList(),
                  ),
                  Gap(mq.height * .02),
                  TextDefaultWidget(
                    title: SelectInfomation.description.toStringName(),
                  ),
                  Gap(mq.height * .02),
                  TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText:
                          SelectInfomation.inputDescription.toStringName(),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                  Gap(mq.height * .01),
                  Container(
                    alignment: Alignment.centerRight,
                    width: double.infinity,
                    child: const TextDefaultWidget(
                      title: "0/1000",
                      fontColor: Colors.black54,
                    ),
                  ),
                  Gap(mq.height * .02),
                  TextDefaultWidget(
                    title: SelectInfomation.minimumConditions.toStringName(),
                  ),
                  const Divider(),
                  MyPostInfomationTags(
                    title: SelectInfomation.age.toStringName(),
                    isIconData: false,
                    tags: selectAgeList.toList(),
                  ),
                  const Divider(),
                  MyPostInfomationTags(
                    title: SelectInfomation.residenceType.toStringName(),
                    isIconData: false,
                    tags: selectResidenceList.toList(),
                  ),
                  const Divider(),
                  MyPostInfomationTags(
                    title: SelectInfomation.afterCare.toStringName(),
                    isIconData: false,
                    tags: selectAfterCareList.toList(),
                  ),
                  Gap(mq.height * .1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
