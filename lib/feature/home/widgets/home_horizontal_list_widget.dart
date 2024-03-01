import 'package:fa_mate_front/common/widgets/tag_widget.dart';
import 'package:fa_mate_front/feature/home/page_controller_provider.dart';
import 'package:fa_mate_front/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeHorizontalListWidget extends ConsumerWidget {
  const HomeHorizontalListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    mq = MediaQuery.of(context).size;
    return SizedBox(
      height: mq.height * .29,
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => Gap(mq.width * .02),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.push("/postDetail");
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
                      // color: const Color(0xffF8F8F8),
                    ),
                    width: double.infinity,
                    height: mq.height * .1,
                    child: CachedNetworkImage(
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      imageUrl: "https://source.unsplash.com/random/?puppy",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Gap(mq.height * .01),
                  const Text(
                    "生まれたばかりの赤ちゃんです。小さくてとても可愛い",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Gap(mq.height * .002),
                  const Wrap(
                    spacing: 2,
                    runSpacing: 3,
                    children: [
                      TagWidget(title: "東京都"),
                      TagWidget(title: "1ヶ月弱"),
                      TagWidget(title: "オス"),
                      TagWidget(title: "ミックス"),
                      TagWidget(title: "予防接種済"),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
