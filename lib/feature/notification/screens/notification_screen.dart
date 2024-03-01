import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:fa_mate_front/feature/home/page_controller_provider.dart';
import 'package:fa_mate_front/route/bottombar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

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
                Iconsax.arrow_left_2,
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
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: double.infinity,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/250/${index + 1}50',
                  fit: BoxFit.cover,
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
              Iconsax.arrow_right_34,
            ),
          );
        },
      ),
    );
  }
}
