import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/constant/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNotificationIcon extends StatelessWidget {
  const CustomNotificationIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
  });
  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {
            context.push("/notificationScreen");
          },
          icon: Icon(
            AppIcons.notification,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 15,
          top: 15,
          child: Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(
              color: AppColors.red,
              borderRadius: BorderRadius.circular(100),
            ),
            // child: Center(
            //   child: Text(
            //     "",
            //     style: Theme.of(context)
            //         .textTheme
            //         .labelSmall!
            //         .apply(color: AppColors.white, fontSizeFactor: 0.8),
            //   ),
            // ),
          ),
        ),
      ],
    );
  }
}
