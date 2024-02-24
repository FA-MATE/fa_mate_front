import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/main.dart';
import 'package:flutter/material.dart';

class PostCategoryWidget extends StatelessWidget {
  const PostCategoryWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.icon,
  });

  final String title;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: mq.height * .1,
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: AppColors.black,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              TextDefaultWidget(title: title),
            ],
          ),
        ),
      ),
    );
  }
}
