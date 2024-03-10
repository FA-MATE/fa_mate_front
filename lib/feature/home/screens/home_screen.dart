import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/widgets/custom_noti_icon_widget.dart';
import 'package:fa_mate_front/common/widgets/more_list_widget.dart';
import 'package:fa_mate_front/common/widgets/tag_widget.dart';
import 'package:fa_mate_front/feature/home/provider/page_controller_provider.dart';
import 'package:fa_mate_front/feature/home/widgets/home_horizontal_list_widget.dart';
import 'package:fa_mate_front/main.dart';
import 'package:fa_mate_front/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

List<Widget> dummyList = [
  const TagWidget(title: "犬"),
  const TagWidget(title: "猫"),
  const TagWidget(title: "東京都"),
  const TagWidget(title: "埼玉県"),
  const TagWidget(title: "オス"),
  const TagWidget(title: "メス"),
];

List<String> bannerList = [
  "assets/images/banners/banner_1.jpg",
  "assets/images/banners/banner_2.jpg",
  "assets/images/banners/banner_3.jpg",
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, mq.height * .1),
          child: SizedBox(
            width: double.infinity,
            height: mq.height * .1,
            child: Container(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 3,
              ),
              color: AppColors.searchBackground,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    alignment: Alignment.centerLeft,
                    height: 32,
                    width: mq.width * .8,
                    decoration: BoxDecoration(
                      color: AppColors.search,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Text("検索"),
                  ),
                  Gap(mq.width * .015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: dummyList
                        .map((e) => Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: e,
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
          ),
        ),
        elevation: 0,
        title: const Text("ペットの里親お探し"),
        actions: [
          CustomNotificationIcon(
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(mq.height * .001),
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: mq.height * .15,
                  child: Consumer(
                    builder: (context, ref, child) {
                      final controller = ref.watch(homePageControllerProvider);
                      return PageView.builder(
                        controller: controller,
                        onPageChanged: (value) {
                          ref
                              .read(curruntIndexProvider.notifier)
                              .updateCurrentIndex(value);
                        },
                        itemBuilder: (context, index) {
                          return SizedBox(
                            child: Image.asset(
                              bannerList[index % bannerList.length],
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Consumer(
                  builder: (context, ref, child) {
                    final currentPage = ref.watch(curruntIndexProvider);
                    return Positioned(
                      bottom: 10,
                      left: mq.width / 2,
                      child: SizedBox(
                        width: mq.width * .1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: bannerList
                              .asMap()
                              .entries
                              .map(
                                (e) => Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: e.key ==
                                            (currentPage % bannerList.length)
                                        ? Colors.amber
                                        : Colors.grey.shade600,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            Gap(mq.height * .05),
            MoreList(
              title: '犬の里親探し',
              onTap: () {},
              isMoreList: true,
            ),
            Gap(mq.height * .005),
            HomeHorizontalListWidget(
              categoryId: Categories.dog.toInt(),
            ),
            Gap(mq.height * .05),
            MoreList(
              title: '猫の里親探し',
              onTap: () {},
              isMoreList: true,
            ),
            Gap(mq.height * .005),
            HomeHorizontalListWidget(categoryId: Categories.cat.toInt()),
            Gap(mq.height * .05),
            MoreList(
              title: '鳥の里親探し',
              onTap: () {},
              isMoreList: true,
            ),
            Gap(mq.height * .005),
            HomeHorizontalListWidget(categoryId: Categories.bird.toInt()),
            Gap(mq.height * .05),
          ],
        ),
      ),
    );
  }
}
