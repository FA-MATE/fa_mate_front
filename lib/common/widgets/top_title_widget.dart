import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/main.dart';
import 'package:flutter/material.dart';

class TopTitleWidget extends StatelessWidget {
  const TopTitleWidget({
    super.key,
    required this.widget,
    this.alignment = Alignment.centerLeft,
  });

  final Widget widget;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(double.infinity, mq.height * .05),
      child: Container(
        alignment: alignment,
        padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
        width: double.infinity,
        height: mq.height * .05,
        color: AppColors.tag,
        child: widget,
      ),
    );
  }
}
