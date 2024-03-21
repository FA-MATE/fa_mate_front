import 'package:fa_mate_front/feature/more_post/screens/more_post.dart';
import 'package:fa_mate_front/feature/notification/screens/notification_screen.dart';
import 'package:fa_mate_front/feature/home/screens/home_screen.dart';
import 'package:fa_mate_front/feature/mypage/screens/mypage_screen.dart';
import 'package:fa_mate_front/feature/post/screens/post_detail_screen.dart';
import 'package:fa_mate_front/feature/post/screens/post_screen.dart';
import 'package:fa_mate_front/feature/post/screens/post_upload_confirm_screen.dart';
import 'package:fa_mate_front/feature/post/screens/post_upload_detail_screen.dart';
import 'package:fa_mate_front/feature/post/screens/select_category.dart';
import 'package:fa_mate_front/route/root_screen.dart';
import 'package:fa_mate_front/route/route_error_screen.dart';
import 'package:fa_mate_front/route/router_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
        path: '/postDetail',
        name: postDetail,
        builder: (context, state) => PostDetailScreen(
          postId: state.extra as int,
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/postUploadDetail',
        name: postUploadDetail,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideTransition(
                  position:
                      Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
                          .animate(animation),
                  child: const PostDetailUploadScreen(),
                );
              },
              child: const SizedBox.shrink());
        },
      ),
      GoRoute(
        path: '/mypage',
        name: mypage,
        builder: (context, state) => MyPageScreen(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/selectCategory',
        name: selectCategory,
        builder: (context, state) =>
            SelectCategory(selectCategory: state.extra as dynamic),
      ),
      GoRoute(
        path: '/notificationScreen',
        name: notificationScreen,
        builder: (context, state) => NotificationScreen(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/postUploadConfirmScreen',
        name: postUploadConfirmScreen,
        builder: (context, state) => PostUploadConfirmScreen(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/morePostScreen',
        name: morePostScreen,
        builder: (context, state) => MorePostScreen(
          title: state.extra as String,
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
