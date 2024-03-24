import 'package:crypto_app/routes/app_routes.dart';
import 'package:crypto_app/views/pages/home_screen.dart';
import 'package:crypto_app/views/pages/onboard_screen.dart';
import 'package:crypto_app/views/pages/signin.dart';
import 'package:crypto_app/views/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
  
class AppPages {
  static final router = GoRouter(
    routes: [
      GoRoute(
        name: AppRoutes.home,
        path: "/",
        pageBuilder: (context, state) => const MaterialPage(
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        name: AppRoutes.signup,
        path: "/${AppRoutes.signup}",
        pageBuilder: (context, state) => const MaterialPage(
          child: SignupPage(),
        ),
      ),
      GoRoute(
        name: AppRoutes.signin,
        path: "/${AppRoutes.signin}",
        pageBuilder: (context, state) => const MaterialPage(
          child: SignInPage(),
        ),
      ),
      //  GoRoute(
      //   name: AppRoutes.home,
      //   path: "/${AppRoutes.home}",
      //   pageBuilder: (context, state) => const MaterialPage(
      //     child: HomeScreen(),
      //   ),
      // ),
    ],
  );
}
