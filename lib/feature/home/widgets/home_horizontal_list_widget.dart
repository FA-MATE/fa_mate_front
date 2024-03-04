import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/models/tag_model.dart';
import 'package:fa_mate_front/common/widgets/tag_widget.dart';
import 'package:fa_mate_front/feature/home/provider/home_post_list_provider.dart';
import 'package:fa_mate_front/main.dart';
import 'package:fa_mate_front/providers/tag_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

class HomeHorizontalListWidget extends ConsumerWidget {
  // final AsyncValue<List<HomePostListModel>> dataList;
  final int categoryId;

  const HomeHorizontalListWidget({super.key, required this.categoryId});

  // const HomeHorizontalListWidget(
  //     {super.key, required this.dataList, required this.categoryName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    mq = MediaQuery.of(context).size;
    final getTagList = ref.watch(getTagsProvider);
    final getPostDataList =
        ref.watch(getPostCategoryListProvider(categoryId: categoryId));

    late List<TagListModel> tags = [];
    return SizedBox(
        height: mq.height * .29,
        child: getPostDataList.when(
          loading: () {
            return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => Gap(mq.width * .02),
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(0.2),
                        blurRadius: 4,
                        offset: const Offset(2, 2),
                      ),
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(0.1),
                        blurRadius: 2,
                        offset: const Offset(-1, 0),
                      ),
                    ],
                  ),
                  width: mq.width * .35,
                  margin: EdgeInsets.only(
                    top: 4,
                    bottom: 4,
                    left: index == 0 ? mq.width * .07 : 4,
                    right: 4,
                  ),
                  padding: EdgeInsets.only(
                    left: mq.width * .02,
                    right: mq.width * .02,
                    top: mq.width * .03,
                    bottom: mq.width * .01,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            // color: const Color(0xffF8F8F8),
                            color: Colors.black26,
                          ),
                          width: double.infinity,
                          height: mq.height * .1,
                        ),
                      ),
                      Gap(mq.height * .01),
                      Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          height: mq.height * .015,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: double.infinity,
                        ),
                      ),
                      Gap(mq.height * .005),
                      Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          width: mq.width * .2,
                          height: mq.height * .015,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Gap(mq.height * .01),
                      Wrap(
                        spacing: 2,
                        runSpacing: 3,
                        children: List.generate(5, (index) {
                          return Shimmer.fromColors(
                            baseColor: Colors.grey,
                            highlightColor: Colors.grey.shade100,
                            child: Container(
                              width: mq.width * .1,
                              height: mq.height * .02,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          error: (error, stackTrace) => Text(error.toString()),
          data: (data) {
            return ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => Gap(mq.width * .02),
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) {
                tags.clear();
                for (var tag in data[index].tags) {
                  final listindex = getTagList.value!
                      .indexWhere((element) => element.id == tag["id"]);
                  tags.add(getTagList.value![listindex]);
                }
                return GestureDetector(
                  onTap: () {
                    context.push("/postDetail", extra: data[index].id);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff000000).withOpacity(0.2),
                          blurRadius: 4,
                          offset: const Offset(2, 2),
                        ),
                        BoxShadow(
                          color: const Color(0xff000000).withOpacity(0.1),
                          blurRadius: 2,
                          offset: const Offset(-1, 0),
                        ),
                      ],
                    ),
                    width: mq.width * .35,
                    margin: EdgeInsets.only(
                      top: 4,
                      bottom: 4,
                      left: index == 0 ? mq.width * .07 : 4,
                      right: index == 9 ? mq.width * .07 : 4,
                    ),
                    padding: EdgeInsets.only(
                      left: mq.width * .02,
                      right: mq.width * .02,
                      top: mq.width * .03,
                      bottom: mq.width * .01,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          width: double.infinity,
                          height: mq.height * .1,
                          child: CachedNetworkImage(
                            errorWidget: (context, url, error) => Container(
                              color: AppColors.grey,
                            ),
                            placeholder: (context, url) => Shimmer.fromColors(
                              baseColor: Colors.grey,
                              highlightColor: Colors.grey.shade100,
                              child: Container(
                                color: Colors.black26,
                              ),
                            ),
                            imageUrl: data[index].postImageUrl ?? "",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Gap(mq.height * .01),
                        Text(
                          "${data[index].title}+${data[index].id} ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Gap(mq.height * .002),
                        Wrap(
                          spacing: 2,
                          runSpacing: 3,
                          children: [
                            ...tags.map(
                              (e) => TagWidget(title: e.name),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}
