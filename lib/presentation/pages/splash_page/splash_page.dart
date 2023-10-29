import 'package:auto_route/auto_route.dart';
import 'package:brototype_video_app/presentation/core/constants.dart';
import 'package:brototype_video_app/presentation/core/extensions/context_extension.dart';
import 'package:brototype_video_app/presentation/core/widgets/app_scaffold.dart';
import 'package:brototype_video_app/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3));
      // ignore: use_build_context_synchronously
      context.replaceRoute(const BatchLoginRoute());
    });

    return AppScaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 80),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: context.isDarkMode ? kLightLogo : kDarkLogo,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
