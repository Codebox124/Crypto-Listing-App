import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import "routes/app_pages.dart";


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: CryptoApp(),
    ),
  );
}

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'MotoNg',
      debugShowCheckedModeBanner: false,
    
      routerConfig: AppPages.router,
    );
  }
}