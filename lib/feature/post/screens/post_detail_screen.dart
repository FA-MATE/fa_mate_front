import 'package:cached_network_image/cached_network_image.dart';
import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/feature/home/page_controller_provider.dart';
import 'package:fa_mate_front/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

List<String> photoUrlList = [
  "https://picsum.photos/150/250",
  "https://picsum.photos/250/250",
  "https://picsum.photos/350/250",
];

class PostDetailScreen extends StatefulWidget {
  const PostDetailScreen({super.key});

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
                Icons.arrow_back,
              ),
              onPressed: () {
                ref.read(curruntIndexProvider.notifier).reset();
                context.pop();
              },
            );
          },
        ),
      ),
      body: Column(
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
                  // itemCount: photoUrlList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: AppColors.grey,
                      width: double.infinity,
                      child: CachedNetworkImage(
                        imageUrl: photoUrlList[index % photoUrlList.length],
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                bottom: 10,
                child: SizedBox(
                  width: mq.width * .07,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: photoUrlList
                        .asMap()
                        .entries
                        .map(
                          (e) => Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                              color:
                                  e.key == (_currentPage % photoUrlList.length)
                                      ? Colors.amber
                                      : Colors.grey.shade600,
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                        .toList(),

                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // children: bannerList
                    //     .asMap()
                    //     .entries
                    //     .map(
                    //       (e) => Container(
                    //         width: 10,
                    //         height: 10,
                    //         decoration: BoxDecoration(
                    //           color: e.key == (_currentPage % bannerList.length)
                    //               ? Colors.amber
                    //               : Colors.grey.shade600,
                    //           shape: BoxShape.circle,
                    //         ),
                    //       ),
                    //     )
                    //     .toList(),
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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextDefaultWidget(
                      title: "ロングコートチワワ",
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
                        _isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: _isFavorite ? Colors.red : AppColors.black,
                      ),
                    ),
                  ],
                ),
                const TextDefaultWidget(
                  textAlign: TextAlign.left,
                  title: "生まれたばかりの赤ちゃんです。小さくてとてもかわいです。",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  maxLines: 2,
                ),
                Gap(mq.height * .01),
                const TextDefaultWidget(
                  textAlign: TextAlign.left,
                  title:
                      "ロングコートチワワは体高より体長がわずかに長い、立ち耳の超小型犬です。頭蓋骨は丸い形のアップルヘッドが好ましく、胴体はしっかりしています。手足は細く、理想体重は1.5～3kgの間とされています。",
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
                Gap(mq.height * .005),
                const TextDefaultWidget(
                  title: "• 마당있는 주택에 거주 중인 분",
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
                Gap(mq.height * .005),
                const TextDefaultWidget(
                  title: "• 가족 중 성인이 있는 분",
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
