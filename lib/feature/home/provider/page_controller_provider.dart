import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'page_controller_provider.g.dart';

@riverpod
class HomePageController extends _$HomePageController {
  @override
  PageController build() {
    return PageController();
  }

  void autoMovePage(int currentPage) {
    state.animateToPage(currentPage,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  void jumpPage(int currentPage) {
    state.jumpToPage(
      currentPage,
    );
  }
}

@riverpod
class CurruntIndex extends _$CurruntIndex {
  @override
  int build() {
    ref.onDispose(() {
      log("dispose currentIdnex");
      timer?.cancel();
    });
    autoMovePage();
    return 0;
  }

  Timer? timer;

  void updateCurrentIndex(int index) {
    state = index;
  }

  void reset() {
    state = 0;
    ref.read(homePageControllerProvider.notifier).jumpPage(state);
  }

  void autoMovePage() {
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      state++;
      ref.read(homePageControllerProvider.notifier).autoMovePage(state);
    });
  }
}
