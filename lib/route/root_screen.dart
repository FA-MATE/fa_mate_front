import 'package:fa_mate_front/common/widgets/bottom_navi_widget.dart';
import 'package:fa_mate_front/feature/home/screens/home_screen.dart';
import 'package:fa_mate_front/feature/mypage/screens/mypage_screen.dart';
import 'package:fa_mate_front/feature/post/screens/post_screen.dart';
import 'package:fa_mate_front/route/bottombar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootScreen extends ConsumerWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomCurrentIndexProvider);
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        sizing: StackFit.loose,
        children: const [
          HomeScreen(),
          PostScreen(),
          MyPageScreen(),
        ],
      ),
      bottomNavigationBar: const BottomNaviWidget(),
    );
  }
}
