import 'package:fa_mate_front/providers/init_data_provider.dart';
import 'package:fa_mate_front/route/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

late Size mq;

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final router = ref.watch(goRouterProvider);
        final initData = ref.watch(getInitDataProvider);

        return initData.when(
          error: (error, stackTrace) => Center(child: Text(error.toString())),
          loading: () {
            return const MaterialApp(
              home: Scaffold(
                body: Center(
                  child: Text("Loading....."),
                ),
              ),
            );
          },
          data: (data) {
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
      },
    );
  }
}
