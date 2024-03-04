import 'package:cached_network_image/cached_network_image.dart';
import 'package:fa_mate_front/common/constant/app_icons.dart';
import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/feature/home/provider/page_controller_provider.dart';
import 'package:fa_mate_front/route/bottombar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Consumer(
          builder: (context, ref, child) {
            return IconButton(
              icon: const Icon(
                AppIcons.backIcon,
              ),
              onPressed: () {
                ref.read(bottomCurrentIndexProvider) == 0
                    ? ref.read(curruntIndexProvider.notifier).reset()
                    : "";

                context.pop();
              },
            );
          },
        ),
        title: const Text("お知らせ"),
        elevation: 0.1,
        shadowColor: Colors.black,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView.separated(
        itemCount: 20,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black12.withOpacity(0.1),
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: double.infinity,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CachedNetworkImage(
                  imageUrl: 'https://picsum.photos/250/${index + 1}50',
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      color: Colors.black26,
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: Colors.black26,
                  ),
                ),
              ),
            ),
            title: const TextDefaultWidget(
              textAlign: TextAlign.start,
              title:
                  "Qui minim sint do nulla non deserunt laborum exercitation et veniam ipsum aliqua. Reprehenderit aliquip laborum commodo qui minim laboris. Exercitation qui eiusmod cillum commodo consequat sint qui culpa sunt.",
              maxLines: 3,
              textOverflow: TextOverflow.ellipsis,
            ),
            subtitle: const Text("3日前"),
            trailing: const Icon(
              AppIcons.arrowRight,
            ),
          );
        },
      ),
    );
  }
}
