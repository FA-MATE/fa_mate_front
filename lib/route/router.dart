import 'package:fa_mate_front/feature/home/screens/home_screen.dart';
import 'package:fa_mate_front/feature/mypage/screens/mypage_screen.dart';
import 'package:fa_mate_front/feature/post/screens/post_screen.dart';
import 'package:fa_mate_front/route/root_screen.dart';
import 'package:fa_mate_front/route/route_error_screen.dart';
import 'package:fa_mate_front/route/router_name.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: root,
        builder: (context, state) => RootScreen(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/home',
        name: home,
        builder: (context, state) => HomeScreen(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/post',
        name: post,
        builder: (context, state) => PostScreen(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/mypage',
        name: mypage,
        builder: (context, state) => MyPageScreen(
          key: state.pageKey,
        ),
      ),
    ],
    errorBuilder: (context, state) => RouteErrorScreen(
      errorMsg: state.error.toString(),
      key: state.pageKey,
    ),
  );
});
