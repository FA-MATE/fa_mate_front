import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/main.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class MyPostInfomation extends StatefulWidget {
  final String title;
  final String? selectItem;
  final bool isIconData;
  final List<String> tags;

  const MyPostInfomation({
    super.key,
    required this.title,
    this.selectItem,
    required this.isIconData,
    required this.tags,
  });

  @override
  State<MyPostInfomation> createState() => _MyPostInfomationState();
}

int? currentIndex = 0;

class _MyPostInfomationState extends State<MyPostInfomation> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.isIconData ? context.push("/selectCategory") : "";
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: TextDefaultWidget(
                    title: widget.title,
                  ),
                ),
              ),
              TextDefaultWidget(
                title: widget.selectItem ?? "필수",
                fontColor: widget.selectItem == null
                    ? Colors.black54
                    : AppColors.black,
              ),
              Gap(mq.width * .05),
              Icon(
                Iconsax.arrow_right_34,
                color: widget.isIconData ? AppColors.black : Colors.transparent,
              )
            ],
          ),
          Wrap(children: [
            ...widget.tags.asMap().entries.map((e) {
              return Container(
                margin: EdgeInsets.only(
                  right: mq.width * .02,
                ),
                child: ChoiceChip(
                  selected: currentIndex == e.key,
                  onSelected: (value) {
                    setState(() {
                      currentIndex = value ? e.key : e.key;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(
                      100,
                    ),
                  ),
                  label: TextDefaultWidget(
                    title: e.value,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: mq.width * .03,
                  ),
                  selectedColor: AppColors.tag,
                  showCheckmark: false,
                ),
              );
            }),
          ]),
        ],
      ),
    );
  }
}
