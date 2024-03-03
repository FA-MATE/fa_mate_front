// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:fa_mate_front/feature/post/post_category_provider.dart';
import 'package:fa_mate_front/feature/post/widgets/my_post_infomation_widget.dart';
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
    log("categoryId : $categoryId");
    final a = ref.watch(postUploadCategoryIndexProvider);
    log("category index: $a");
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black.withOpacity(0.5),
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
        title: const Text("정보 상세 입력"),
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
                  const TextDefaultWidget(title: "타이틀"),
                  Gap(mq.height * .01),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "타이틀을 적어주세요",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
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
                  const TextDefaultWidget(title: "상세정보"),
                  const Divider(),
                  const MyPostInfomation(
                    title: "카테고리",
                    selectItem: "강아지",
                    isIconData: true,
                    tags: [],
                  ),
                  const Divider(),
                  const MyPostInfomation(
                    title: "품종",
                    isIconData: true,
                    tags: [],
                  ),
                  const Divider(),
                  const MyPostInfomation(
                    title: "지역",
                    isIconData: true,
                    tags: [],
                  ),
                  const Divider(),
                  const MyPostInfomation(
                    title: "나이",
                    isIconData: true,
                    tags: [],
                  ),
                  const Divider(),
                  const MyPostInfomation(
                    title: "성별",
                    isIconData: false,
                    tags: ["osu", "mesu"],
                  ),
                  Gap(mq.height * .02),
                  const TextDefaultWidget(title: "분양내용"),
                  Gap(mq.height * .02),
                  const TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: "내용을 적어주세요",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
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
                  const TextDefaultWidget(title: "최소 분양 조건"),
                  const Divider(),
                  const MyPostInfomation(
                    title: "나이",
                    isIconData: false,
                    tags: ["조건없음", "성인만", "가족 중 성인 있음"],
                  ),
                  const Divider(),
                  const MyPostInfomation(
                    title: "거주형태",
                    isIconData: false,
                    tags: ["조건없음", "주택", "마당있는 주택"],
                  ),
                  const Divider(),
                  const MyPostInfomation(
                    title: "분양 후 케어",
                    isIconData: false,
                    tags: ["조건없음", "연락가능", "매달 사진 10장"],
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
