import 'package:fa_mate_front/route/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

late Size mq;

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final router = ref.watch(goRouterProvider);
        return MaterialApp.router(
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
          routerDelegate: router.routerDelegate,
          theme: ThemeData(
              useMaterial3: true,
              appBarTheme: const AppBarTheme(
                scrolledUnderElevation: 0,
                backgroundColor: Colors.white,
              )),
        );
      },
    );
  }
}
