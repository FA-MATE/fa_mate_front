import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/feature/notification/widets/profile_listtile_widget.dart';
import 'package:fa_mate_front/main.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: AppColors.white,
        shadowColor: AppColors.black,
        title: const Text("マイページ"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 30,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: mq.width * .1,
                  ),
                  Gap(mq.width * .05),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextDefaultWidget(
                        title: "申民鐵 様",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      Gap(mq.height * .01),
                      const TextDefaultWidget(
                        title: "shinsnsnshin@gmail.com",
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Gap(mq.height * .03),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.money),
                        TextDefaultWidget(
                          title: "1件",
                          fontSize: 10,
                        ),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.black26,
                      thickness: 1,
                      width: 1,
                    ),
                    Column(
                      children: [
                        Icon(Iconsax.pet),
                        TextDefaultWidget(
                          title: "1件",
                          fontSize: 10,
                        ),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.black26,
                      thickness: 1,
                      width: 1,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: AppColors.red,
                        ),
                        TextDefaultWidget(
                          title: "1件",
                          fontSize: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Gap(mq.height * .05),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mq.width * .02),
              child: Column(
                children: ListTileList.asMap()
                    .entries
                    .map(
                      (data) => ProfileListTileWidget(
                        title: data.value["title"],
                        icon: data.value["icon"],
                        isEndPoint: data.key == ListTileList.length - 1,
                      ),
                    )
                    .toList(),
              ),
            ),
            Gap(mq.height * .05),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.tag,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                minimumSize: Size(mq.width * .8, mq.height * .05),
              ),
              onPressed: () {},
              child: const TextDefaultWidget(
                title: "退会",
                fontColor: AppColors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> ListTileList = [
  {"title": "基本情報", "icon": Icons.person_outline},
  {"title": "基本情報", "icon": Icons.person_outline},
  {"title": "基本情報", "icon": Icons.person_outline},
  {"title": "基本情報", "icon": Icons.person_outline},
  {"title": "基本情報", "icon": Icons.person_outline},
  {"title": "基本情報", "icon": Icons.person_outline},
  {"title": "基本情報", "icon": Icons.person_outline},
  {"title": "基本情報", "icon": Icons.person_outline},
  {"title": "基本情報", "icon": Icons.person_outline},
];
