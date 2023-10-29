import 'package:brototype_video_app/presentation/router/app_router.dart';
import 'package:brototype_video_app/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BrototypeVideoApp extends StatelessWidget {
  BrototypeVideoApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      routerConfig: _appRouter.config(),
    );
  }
}
