import 'package:cached_network_image/cached_network_image.dart';
import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/constant/app_icons.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/feature/home/provider/page_controller_provider.dart';
import 'package:fa_mate_front/feature/post/provider/post_detail_provider.dart';
import 'package:fa_mate_front/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class PostDetailScreen extends StatefulWidget {
  const PostDetailScreen({super.key, required this.postId});

  final int postId;

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  //PageviewController currentpage
  int _currentPage = 0;
  bool _isFavorite = false;
  //Controller
  final PageController _pageController = PageController();

  //使わなくなるController、Timerを閉じる
  @override
  void dispose() {
    super.dispose();
    _currentPage = 0;
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Consumer(
          builder: (context, ref, child) {
            return IconButton(
              icon: const Icon(
                AppIcons.backIcon,
              ),
              onPressed: () {
                ref.read(curruntIndexProvider.notifier).reset();
                context.pop();
              },
            );
          },
        ),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final postData = ref.watch(postDetailDataProvider(widget.postId));
          return postData.when(
            error: (error, stackTrace) => Center(
              child: Text(error.toString()),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            data: (data) {
              List<Map<String, dynamic>> images = [];
              for (var element in data.postImages) {
                if (element["image_url"] != null) {
                  images.add(element);
                }
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: mq.height * .3,
                        child: PageView.builder(
                          onPageChanged: (value) {
                            setState(() {
                              _currentPage = value;
                            });
                          },
                          controller: _pageController,
                          itemBuilder: (context, index) {
                            return Container(
                              color: AppColors.grey,
                              width: double.infinity,
                              child: CachedNetworkImage(
                                imageUrl: images[index % images.length]
                                    ["image_url"],

                                // photoUrlList[index % photoUrlList.length],
                                fit: BoxFit.fitWidth,
                                placeholder: (context, url) => Center(
                                  child: Shimmer.fromColors(
                                      baseColor: Colors.grey,
                                      highlightColor: Colors.grey.shade100,
                                      child: Container(
                                        color: Colors.black26,
                                      )),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        bottom: mq.height * .01,
                        right: mq.width * .05,
                        child: SizedBox(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: mq.width * .02,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.searchBackground,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextDefaultWidget(
                              title:
                                  "${_currentPage % images.length + 1} / ${images.length}",
                              fontColor: AppColors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: mq.width * .05,
                      vertical: mq.height * .01,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextDefaultWidget(
                              title: data.subCategoryId.toString(),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  _isFavorite = !_isFavorite;
                                });
                              },
                              icon: Icon(
                                _isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color:
                                    _isFavorite ? Colors.red : AppColors.black,
                              ),
                            ),
                          ],
                        ),
                        TextDefaultWidget(
                          textAlign: TextAlign.left,
                          title: data.title,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          maxLines: 2,
                        ),
                        Gap(mq.height * .01),
                        TextDefaultWidget(
                          textAlign: TextAlign.left,
                          title: data.body,
                          fontSize: 15,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: mq.height * .005,
                    color: AppColors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextDefaultWidget(
                          textAlign: TextAlign.left,
                          title: "이런 분을 찾아요",
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                        ...data.conditions.map((e) {
                          return TextDefaultWidget(
                            title: "• ${e["id"]}",
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          );
                        }),
                        // Gap(mq.height * .005),
                        // Gap(mq.height * .005),
                        // const TextDefaultWidget(
                        //   title: "• 가족 중 성인이 있는 분",
                        //   fontSize: 19,
                        //   fontWeight: FontWeight.bold,
                        // ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
