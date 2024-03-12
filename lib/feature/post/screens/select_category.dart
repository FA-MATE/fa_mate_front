import 'dart:developer';

import 'package:fa_mate_front/common/constant/app_icons.dart';
import 'package:fa_mate_front/feature/post/provider/post_selected_category.dart';
import 'package:fa_mate_front/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SelectCategory extends StatelessWidget {
  const SelectCategory({
    super.key,
    this.selectCategory,
  });
  final dynamic selectCategory;

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        leading: Consumer(builder: (context, ref, child) {
          return GestureDetector(
            onTap: () {
              context.pop();
              ref.invalidate(postSelectedCategoryNameProvider);
            },
            child: const Icon(
              AppIcons.backIcon,
            ),
          );
        }),
        shadowColor: Colors.black,
        title: Consumer(
          builder: (context, ref, child) {
            final title = ref.watch(postSelectedCategoryNameProvider);
            log(title);
            return Text(title);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: mq.height * .01),
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: selectCategory.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => log("selected"),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mq.width * .02,
                ),
                child: Text(
                  selectCategory.toList()[index].name,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
