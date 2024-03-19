import 'package:crypto_app/routes/app_routes.dart';
import 'package:crypto_app/views/pages/onboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppPages {
  static final router = GoRouter(
    routes: [
       GoRoute(
        name: AppRoutes.onboard,
        path: "/",
        pageBuilder: (context, state) => const MaterialPage(
          child: OnBoardingScreen(),
        ),
      ),
    ],
  );
}
