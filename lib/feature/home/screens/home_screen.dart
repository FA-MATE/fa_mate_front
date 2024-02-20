import 'package:cached_network_image/cached_network_image.dart';
import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/widgets/more_list_widget.dart';
import 'package:fa_mate_front/common/widgets/tag_widget.dart';
import 'package:fa_mate_front/feature/home/widgets/home_horizontal_list_widget.dart';
import 'package:fa_mate_front/main.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

List<Widget> dummyList = [
  const TagWidget(title: "犬"),
  const TagWidget(title: "猫"),
  const TagWidget(title: "東京都"),
  const TagWidget(title: "埼玉県"),
  const TagWidget(title: "オス"),
  const TagWidget(title: "メス"),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("ペットの里親お探し"),
        actions: [
          Container(
            margin: EdgeInsets.only(right: mq.width * .05),
            child: const Badge(
              child: Icon(Icons.notifications_none_outlined),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: mq.height * .1,
              child: Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 3,
                ),
                color: const Color(0xffD6AA32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      alignment: Alignment.centerLeft,
                      height: 32,
                      width: mq.width * .8,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F4F6),
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
            Gap(mq.height * .01),
            SizedBox(
              width: double.infinity,
              height: mq.height * .15,
              child: CachedNetworkImage(
                imageUrl: "https://source.unsplash.com/random/500x500",
                fit: BoxFit.cover,
              ),
            ),
            Gap(mq.height * .05),
            MoreList(
              title: '犬の里親探し',
              onTap: () {},
            ),
            Gap(mq.height * .005),
            const HomeHorizontalListWidget(),
            Gap(mq.height * .05),
            MoreList(
              title: '猫の里親探し',
              onTap: () {},
            ),
            Gap(mq.height * .005),
            const HomeHorizontalListWidget(),
          ],
        ),
      ),
    );
  }
}
