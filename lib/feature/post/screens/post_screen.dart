import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/widgets/custom_noti_icon_widget.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/feature/post/provider/post_upload_provider.dart';
import 'package:fa_mate_front/feature/post/widgets/post_category_widget.dart';
import 'package:fa_mate_front/feature/post/widgets/post_hint_widget.dart';
import 'package:fa_mate_front/main.dart';
import 'package:fa_mate_front/utils/enum.dart';
import 'package:fa_mate_front/utils/post_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class PostScreen extends ConsumerWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    mq = MediaQuery.of(context).size;
    final postUtils = PostUtils();
    return Scaffold(
      appBar: AppBar(
        // bottom: PreferredSize(
        //   preferredSize: Size(double.infinity, mq.height * .05),
        //   child: const TopTitleWidget(
        //     widget: Text("投稿"),
        //     alignment: Alignment.center,
        //   ),
        // ),
        elevation: 0.2,
        backgroundColor: AppColors.white,
        shadowColor: AppColors.black,
        centerTitle: true,
        title: const Text("ペットの里親お探し"),
        actions: [
          CustomNotificationIcon(
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(mq.height * .02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextDefaultWidget(
                    title: '譲ります',
                    fontColor: AppColors.black,
                    fontSize: 20,
                    textAlign: TextAlign.start,
                  ),
                  Gap(mq.height * .02),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PostCategoryWidget(
                        onTap: () {
                          ref.read(postUploadProvider.notifier).setData(
                              postUtils.initUploadTagConditions(
                                  Categories.dog.toInt()));
                          context.push(
                            "/postUploadDetail",
                          );
                        },
                        title: "イヌ",
                        icon: Iconsax.pet,
                      ),
                      Gap(mq.height * .02),
                      PostCategoryWidget(
                        onTap: () {
                          ref.read(postUploadProvider.notifier).setData(
                                postUtils.initUploadTagConditions(
                                    Categories.cat.toInt()),
                              );
                          context.push(
                            "/postUploadDetail",
                          );
                        },
                        title: "ネコ",
                        icon: Iconsax.add_square,
                      ),
                      Gap(mq.height * .02),
                      PostCategoryWidget(
                        onTap: () {
                          ref.read(postUploadProvider.notifier).setData(
                                postUtils.initUploadTagConditions(
                                    Categories.bird.toInt()),
                              );
                          context.push(
                            "/postUploadDetail",
                          );
                        },
                        title: "トリ",
                        icon: Iconsax.add_square,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Gap(mq.height * .05),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextDefaultWidget(
                    title: "お譲りに関する注意点",
                    fontColor: Colors.black54,
                    fontSize: 15,
                  ),
                  Divider(
                    height: mq.height * .04,
                  ),
                  const PostHintWidget(
                    title: '何が問題',
                    description:
                        'Aliquip mollit esse consequat ad cillum nisi ullamco excepteur minim incididunt.',
                    imageUrl: 'https://picsum.photos/200',
                  ),
                  Divider(
                    height: mq.height * .04,
                  ),
                  const PostHintWidget(
                    title: '何が問題',
                    description:
                        'Aliquip mollit esse consequat ad cillum nisi ullamco excepteur minim incididunt.',
                    imageUrl: 'https://picsum.photos/100',
                  ),
                  Divider(
                    height: mq.height * .04,
                  ),
                  const PostHintWidget(
                    title: '何が問題',
                    description:
                        'Aliquip mollit esse consequat ad cillum nisi ullamco excepteur minim incididunt.',
                    imageUrl: 'https://picsum.photos/150',
                  ),
                  Divider(
                    height: mq.height * .04,
                  ),
                  const PostHintWidget(
                    title: '何が問題',
                    description:
                        'Aliquip mollit esse consequat ad cillum nisi ullamco excepteur minim incididunt.',
                    imageUrl: 'https://picsum.photos/160',
                  ),
                  Divider(
                    height: mq.height * .04,
                  ),
                  const PostHintWidget(
                    title: '何が問題',
                    description:
                        'Aliquip mollit esse consequat ad cillum nisi ullamco excepteur minim incididunt.',
                    imageUrl: 'https://picsum.photos/170',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
