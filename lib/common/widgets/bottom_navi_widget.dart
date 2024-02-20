import 'package:fa_mate_front/common/constant/app_colors.dart';
import 'package:fa_mate_front/route/bottombar_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "ホーム"),
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: "投稿"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "ホーム"),
        ],
      ),
    );
  }
}
