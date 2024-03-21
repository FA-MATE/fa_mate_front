import 'package:fa_mate_front/feature/post/provider/post_detail_provider.dart';
import 'package:fa_mate_front/feature/post/provider/post_upload_provider.dart';
import 'package:fa_mate_front/feature/post/widgets/my_post_infomation_tags_widget.dart';
import 'package:fa_mate_front/feature/post/widgets/my_post_infomation_widget.dart';
import 'package:fa_mate_front/providers/app_data_provider.dart';
import 'package:fa_mate_front/utils/enum.dart';
import 'package:fa_mate_front/utils/post_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/main.dart';

class PostDetailUploadScreen extends ConsumerStatefulWidget {
  const PostDetailUploadScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PostDetailUploadScreenState();
}

class _PostDetailUploadScreenState
    extends ConsumerState<PostDetailUploadScreen> {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //** Post Model 선택된 정보들 */
    final postUploadModel = ref.watch(postUploadProvider);

//** 항목 리스트  */
    //** category 리스트 */
    final categories = ref.watch(getCategoriesProvider);

    //** 선택된 카테고리의 서브 카테고리 리스트 */
    final subCategoryList = ref.watch(getSubCategoryListProvider(
        postUploadModel.categoryId != null ? postUploadModel.categoryId! : 0));

    //** 지역  */
    final selectRegionList =
        ref.watch(getSelectTagListProvider(Tags.region.toInt()));
    //** 분양동물 정보 */
    final selectPetAgeList =
        ref.watch(getSelectTagListProvider(Tags.age.toInt()));
    //** 성별  */
    final selectGenderList =
        ref.watch(getSelectTagListProvider(Tags.gender.toInt()));
    //** 접종  */
    final selectInoculationList =
        ref.watch(getSelectTagListProvider(Tags.inoculation.toInt()));

    // ** 필수조건 */
    //** 나이  */
    final selectAgeList =
        ref.watch(getSelectCondisionListProvider(Requirements.age.toInto()));
    //** 거주형태  */
    final selectResidenceList = ref
        .watch(getSelectCondisionListProvider(Requirements.residence.toInto()));
    //** 애프터케어  */
    final selectAfterCareList = ref
        .watch(getSelectCondisionListProvider(Requirements.afterCare.toInto()));

    //** Post Util */
    final postUtil = PostUtils();

    // final titleController = ref.watch(postTitleInputProvider);
    // final descController = ref.watch(postDescriptionInputProvider);

    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black.withOpacity(0.5),
        elevation: 1,
        leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              context.pop();
              ref.invalidate(postUploadProvider);
            }),
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
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: titleController,
                    maxLength: 40,
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
                  Gap(mq.height * .02),
                  TextDefaultWidget(
                    title: SelectInfomation.infomation.toStringName(),
                  ),
                  const Divider(),
                  MyPostInfomationCategories(
                    title: SelectInfomation.categories.toStringName(),
                    selectItem: postUploadModel.categoryId != null
                        ? categories
                            .firstWhere((category) =>
                                category.id == postUploadModel.categoryId)
                            .name
                        : "",
                    isIconData: true,
                    subCategories: categories,
                  ),
                  const Divider(),
                  MyPostInfomationCategories(
                    title: SelectInfomation.types.toStringName(),
                    selectItem: postUploadModel.subCategoryId != null
                        ? subCategoryList
                            .firstWhere((tag) =>
                                tag.id == postUploadModel.subCategoryId)
                            .name
                        : "",
                    isIconData: true,
                    subCategories: subCategoryList,
                  ),
                  const Divider(),
                  MyPostInfomationCategories(
                    title: SelectInfomation.region.toStringName(),
                    selectItem: postUtil.screenTagNullCheck(
                                postUploadModel, Tags.region.toInt()) !=
                            null
                        ? postUploadModel.tags
                            ?.firstWhere(
                                (tag) => tag.tagGroup.id == Tags.region.toInt())
                            .name
                        : "",
                    isIconData: true,
                    subCategories: selectRegionList,
                  ),
                  const Divider(),
                  MyPostInfomationCategories(
                    title: SelectInfomation.age.toStringName(),
                    selectItem: postUtil.screenTagNullCheck(
                                postUploadModel, Tags.age.toInt()) !=
                            null
                        ? postUploadModel.tags
                            ?.firstWhere(
                                (tag) => tag.tagGroup.id == Tags.age.toInt())
                            .name
                        : "",
                    isIconData: true,
                    subCategories: selectPetAgeList,
                  ),
                  const Divider(),
                  MyPostInfomationTags(
                    title: SelectInfomation.gender.toStringName(),
                    isIconData: false,
                    tags: selectGenderList.toList(),
                    id: Tags.gender.toInt(),
                    isTags: true,
                  ),
                  const Divider(),
                  MyPostInfomationTags(
                    title: SelectInfomation.inoculation.toStringName(),
                    isIconData: false,
                    tags: selectInoculationList.toList(),
                    id: Tags.inoculation.toInt(),
                    isTags: true,
                  ),
                  Gap(mq.height * .02),
                  TextDefaultWidget(
                    title: SelectInfomation.description.toStringName(),
                  ),
                  Gap(mq.height * .02),
                  TextField(
                    controller: bodyController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    maxLength: 1000,
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
                  Gap(mq.height * .02),
                  TextDefaultWidget(
                    title: SelectInfomation.minimumConditions.toStringName(),
                  ),
                  const Divider(),
                  MyPostInfomationTags(
                    title: SelectInfomation.age.toStringName(),
                    isIconData: false,
                    tags: selectAgeList.toList(),
                    id: Requirements.age.toInto(),
                    isTags: false,
                  ),
                  const Divider(),
                  MyPostInfomationTags(
                    title: SelectInfomation.residenceType.toStringName(),
                    isIconData: false,
                    tags: selectResidenceList.toList(),
                    id: Requirements.residence.toInto(),
                    isTags: false,
                  ),
                  const Divider(),
                  MyPostInfomationTags(
                    title: SelectInfomation.afterCare.toStringName(),
                    isIconData: false,
                    tags: selectAfterCareList.toList(),
                    id: Requirements.afterCare.toInto(),
                    isTags: false,
                  ),
                ],
              ),
            ),
            Gap(mq.height * .02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // disabledBackgroundColor: AppColors.grey,
                    // disabledForegroundColor: AppColors.black,
                    fixedSize: Size(mq.width, mq.width * .11),
                    elevation: 1,
                    backgroundColor: AppColors.searchBackground,
                    foregroundColor: AppColors.white,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                onPressed:
                    bodyController.text.isEmpty || titleController.text.isEmpty
                        ? null
                        : () {
                            ref.read(postUploadProvider.notifier).setData(
                                postUploadModel.copyWith(
                                    title: titleController.text,
                                    body: bodyController.text));
                            context.push('/postUploadConfirmScreen');
                          },
                child: const TextDefaultWidget(title: "内容確認"),
              ),
            ),
            Gap(mq.height * .05),
          ],
        ),
      ),
    );
  }
}
