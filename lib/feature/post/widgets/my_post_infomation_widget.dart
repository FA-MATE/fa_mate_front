import 'dart:developer';

import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/feature/post/provider/post_selected_category.dart';
import 'package:fa_mate_front/main.dart';
import 'package:fa_mate_front/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class MyPostInfomationCategories extends StatelessWidget {
  final String title;
  final String? selectItem;
  final bool isIconData;
  final dynamic subCategories;

  const MyPostInfomationCategories({
    super.key,
    required this.isIconData,
    required this.title,
    this.selectItem,
    required this.subCategories,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return GestureDetector(
          onTap: () {
            ref.read(postSelectedCategoryNameProvider.notifier).setState(title);
            isIconData
                ? context.push("/selectCategory", extra: subCategories)
                : "";
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
                        title: title,
                      ),
                    ),
                  ),
                  TextDefaultWidget(
                    title:
                        selectItem ?? SelectInfomation.essential.toStringName(),
                    fontColor:
                        selectItem == null ? Colors.black54 : AppColors.black,
                  ),
                  Gap(mq.width * .05),
                  Icon(
                    Iconsax.arrow_right_34,
                    color: isIconData ? AppColors.black : Colors.transparent,
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

int? currentIndex = 0;
