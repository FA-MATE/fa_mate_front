import 'package:cached_network_image/cached_network_image.dart';
import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/main.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shimmer/shimmer.dart';

class PostHintWidget extends StatelessWidget {
  const PostHintWidget({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Row(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  height: mq.height * .05,
                  width: mq.height * .05,
                  imageUrl: imageUrl,
                  placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      color: Colors.black26,
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: AppColors.grey,
                  ),
                ),
              ),
              Gap(mq.height * .02),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextDefaultWidget(
                      title: title,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    TextDefaultWidget(
                      title: description,
                      fontSize: 13,
                      fontColor: Colors.black54,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Icon(
          Iconsax.arrow_right_34,
          weight: 100,
        ),
      ],
    );
  }
}
