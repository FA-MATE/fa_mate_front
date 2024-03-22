import 'package:cached_network_image/cached_network_image.dart';
import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/constant/app_icons.dart';
import 'package:fa_mate_front/common/widgets/tag_widget.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/feature/home/models/home_post_list_model.dart';
import 'package:fa_mate_front/feature/home/provider/home_post_list_provider.dart';
import 'package:fa_mate_front/feature/home/provider/page_controller_provider.dart';
import 'package:fa_mate_front/feature/more_post/provider/more_post_provider.dart';
import 'package:fa_mate_front/main.dart';
import 'package:fa_mate_front/providers/app_data_provider.dart';
import 'package:fa_mate_front/utils/post_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class MorePostScreen extends ConsumerStatefulWidget {
  const MorePostScreen({super.key, required this.title});

  final String title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MorePostScreenState();
}

class _MorePostScreenState extends ConsumerState<MorePostScreen> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.position.pixels.floor() ==
              _controller.position.maxScrollExtent.floor() &&
          ref.watch(morePostIsLoadingProvider)) {
        ref.read(postCountProvider.notifier).incrementCount();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final postUtils = PostUtils();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Consumer(
          builder: (context, ref, child) {
            return IconButton(
              icon: const Icon(
                AppIcons.backIcon,
              ),
              onPressed: () {
                ref.read(curruntIndexProvider.notifier).reset();
                ref.invalidate(selectMorePostIdProvider);
                context.pop();
              },
            );
          },
        ),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, mq.height * .06),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
            height: mq.height * .06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TagWidget(
                  title: "品種",
                  horizontal: mq.width * .05,
                  vertical: mq.width * .02,
                ),
                Gap(mq.width * .03),
                TagWidget(
                  title: "年齢",
                  horizontal: mq.width * .05,
                  vertical: mq.width * .02,
                ),
                Gap(mq.width * .03),
                TagWidget(
                  title: "地域",
                  horizontal: mq.width * .05,
                  vertical: mq.width * .02,
                ),
                Gap(mq.width * .03),
                TagWidget(
                  title: "性別",
                  horizontal: mq.width * .05,
                  vertical: mq.width * .02,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
        child: Consumer(
          builder: (context, ref, child) {
            final selectedCategoryId = ref.watch(selectMorePostIdProvider);
            final postcount = ref.watch(postCountProvider);
            final isLoading = ref.watch(morePostIsLoadingProvider);
            final getPostList = ref.watch(
              GetPostCategoryListProvider(
                      categoryId: selectedCategoryId, count: postcount)
                  .future,
            );
            final getCategoryList = ref.watch(getCategoriesProvider);
            final getSubCategoryList = ref.watch(getSubCategoriesProvider);
            return FutureBuilder(
              future: getPostList,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final List<HomePostListModel> list =
                      snapshot.data ?? <HomePostListModel>[];
                  return Scrollbar(
                    controller: _controller,
                    child: SingleChildScrollView(
                      controller: _controller,
                      child: Column(
                        children: [
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            padding:
                                EdgeInsets.symmetric(vertical: mq.height * .03),
                            separatorBuilder: (context, index) =>
                                Gap(mq.height * .01),
                            shrinkWrap: true,
                            itemCount: list.length,
                            itemBuilder: (context, index) {
                              final categoryName = postUtils.searchCategoryName(
                                  getCategoryList, list[index].categoryId);
                              final subCategoryName =
                                  postUtils.searchCategoryName(
                                      getSubCategoryList,
                                      list[index].subCategoryId);
                              final currentData = list[index];

                              return GestureDetector(
                                onTap: () {
                                  context.push("/postDetail",
                                      extra: list[index].id);
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: mq.width * .3,
                                      height: mq.width * .3,
                                      child: CachedNetworkImage(
                                        placeholder: (context, url) =>
                                            Shimmer.fromColors(
                                          baseColor: Colors.grey.shade300,
                                          highlightColor: Colors.grey.shade200,
                                          child: Container(
                                            color: Colors.black,
                                          ),
                                        ),
                                        imageUrl:
                                            list[index].postImageUrl ?? "",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Gap(mq.width * .03),
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextDefaultWidget(
                                            title:
                                                "$categoryName - $subCategoryName",
                                            fontColor: AppColors.green,
                                          ),
                                          TextDefaultWidget(
                                            textAlign: TextAlign.left,
                                            title:
                                                "${currentData.title}, ${currentData.title}",
                                            textOverflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                          TextDefaultWidget(
                                            textAlign: TextAlign.left,
                                            fontSize: 12,
                                            fontColor: Colors.black54,
                                            title: currentData.tags.toString(),
                                            textOverflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          isLoading
                              ? const Padding(
                                  padding: EdgeInsets.only(bottom: 30),
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      color: AppColors.searchBackground,
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink()
                        ],
                      ),
                    ),
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text("ERRRORrR!!!"),
                  );
                }
                return Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade200,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: mq.height * .03),
                    separatorBuilder: (context, index) => Gap(mq.height * .01),
                    shrinkWrap: true,
                    itemCount: 10,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: mq.width * .3,
                              height: mq.width * .3,
                              child: Container(
                                color: Colors.grey,
                              )),
                          Gap(mq.width * .03),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(4, (index) {
                                return Container(
                                  margin:
                                      EdgeInsets.only(bottom: mq.width * .015),
                                  decoration: BoxDecoration(
                                      color: AppColors.grey,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: index == 3
                                      ? mq.width * .4
                                      : double.infinity,
                                  height: 20,
                                );
                              }),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              },
            );

            // getPostList.when(
            //   error: (error, stackTrace) => Container(),
            //   loading: () {
            //     return Shimmer.fromColors(
            //       baseColor: Colors.grey.shade300,
            //       highlightColor: Colors.grey.shade200,
            //       child: ListView.separated(
            //         padding: EdgeInsets.symmetric(vertical: mq.height * .03),
            //         separatorBuilder: (context, index) => Gap(mq.height * .01),
            //         shrinkWrap: true,
            //         itemCount: 10,
            //         physics: const NeverScrollableScrollPhysics(),
            //         itemBuilder: (context, index) {
            //           return Row(
            //             mainAxisSize: MainAxisSize.max,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Container(
            //                   clipBehavior: Clip.antiAlias,
            //                   decoration: BoxDecoration(
            //                     borderRadius: BorderRadius.circular(10),
            //                   ),
            //                   width: mq.width * .3,
            //                   height: mq.width * .3,
            //                   child: Container(
            //                     color: Colors.grey,
            //                   )),
            //               Gap(mq.width * .03),
            //               Flexible(
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: List.generate(4, (index) {
            //                     return Container(
            //                       margin:
            //                           EdgeInsets.only(bottom: mq.width * .015),
            //                       decoration: BoxDecoration(
            //                           color: AppColors.grey,
            //                           borderRadius: BorderRadius.circular(10)),
            //                       width: index == 3
            //                           ? mq.width * .4
            //                           : double.infinity,
            //                       height: 20,
            //                     );
            //                   }),
            //                 ),
            //               ),
            //             ],
            //           );
            //         },
            //       ),
            //     );
            //   },
            //   data: (data) {
            //     return ListView.separated(
            //       padding: EdgeInsets.symmetric(vertical: mq.height * .03),
            //       separatorBuilder: (context, index) => Gap(mq.height * .01),
            //       shrinkWrap: true,
            //       itemCount: data.length,
            //       itemBuilder: (context, index) {
            //         final categoryName = postUtils.searchCategoryName(
            //             getCategoryList, data[index].categoryId);
            //         final subCategoryName = postUtils.searchCategoryName(
            //             getSubCategoryList, data[index].subCategoryId);
            //         final currentData = data[index];

            //         return GestureDetector(
            //           onTap: () {
            //             context.push("/postDetail", extra: data[index].id);
            //           },
            //           child: Row(
            //             mainAxisSize: MainAxisSize.max,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Container(
            //                 clipBehavior: Clip.antiAlias,
            //                 decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(10),
            //                 ),
            //                 width: mq.width * .3,
            //                 height: mq.width * .3,
            //                 child: CachedNetworkImage(
            //                     imageUrl: data[index].postImageUrl ?? "",
            //                     fit: BoxFit.cover),
            //               ),
            //               Gap(mq.width * .03),
            //               Flexible(
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     TextDefaultWidget(
            //                       title: "$categoryName - $subCategoryName",
            //                       fontColor: AppColors.green,
            //                     ),
            //                     TextDefaultWidget(
            //                       textAlign: TextAlign.left,
            //                       title:
            //                           "${currentData.title}, ${currentData.title}",
            //                       textOverflow: TextOverflow.ellipsis,
            //                       maxLines: 1,
            //                     ),
            //                     TextDefaultWidget(
            //                       textAlign: TextAlign.left,
            //                       fontSize: 12,
            //                       fontColor: Colors.black54,
            //                       title: currentData.tags.toString(),
            //                       textOverflow: TextOverflow.ellipsis,
            //                       maxLines: 2,
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         );
            //       },
            //     );
            //   },
            // );
          },
        ),
      ),
    );
  }
}
