import 'package:fa_mate_front/common/widgets/bottom_navi_widget.dart';
import 'package:fa_mate_front/route/bottombar_provider.dart';
import 'package:fa_mate_front/route/screen_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootScreen extends ConsumerWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomCurrentIndexProvider);
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      // screens[currentIndex],
      bottomNavigationBar: const BottomNaviWidget(),
    );
  }
}
