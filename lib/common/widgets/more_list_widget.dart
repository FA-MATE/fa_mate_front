import 'package:fa_mate_front/common/constant/app_icons.dart';
import 'package:fa_mate_front/main.dart';
import 'package:flutter/material.dart';

class MoreList extends StatelessWidget {
  const MoreList({
    super.key,
    required this.title,
    required this.onTap,
    this.isMoreList = false,
  });

  final String title;
  final VoidCallback onTap;
  final bool isMoreList;

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: mq.width * .07),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          isMoreList
              ? GestureDetector(
                  onTap: onTap,
                  child: const Row(
                    children: [
                      Text(
                        "もっと見る",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        AppIcons.arrowRight,
                        size: 14,
                      ),
                    ],
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
