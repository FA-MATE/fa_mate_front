import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/route/bottombar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

class BottomNaviWidget extends ConsumerWidget {
  const BottomNaviWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currenIndex = ref.watch(bottomCurrentIndexProvider);
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: const Offset(0, -1),
          color: Colors.black.withOpacity(0.25),
          blurRadius: 4,
        )
      ]),
      child: BottomNavigationBar(
        onTap: (index) =>
            ref.read(bottomCurrentIndexProvider.notifier).setState(index),
        currentIndex: currenIndex,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.black.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(
              icon: Icon(currenIndex == 0 ? Icons.home : Icons.home_outlined),
              label: "ホーム"),
          BottomNavigationBarItem(
              icon: Icon(currenIndex == 1 ? Iconsax.pet5 : Iconsax.pet4),
              label: "投稿"),
          BottomNavigationBarItem(
              icon: Icon(currenIndex == 2
                  ? Iconsax.profile_circle5
                  : Iconsax.profile_circle4),
              label: "マイページ"),
        ],
      ),
    );
  }
}
