import 'package:auto_route/auto_route.dart';
import 'package:brototype_video_app/presentation/core/constants.dart';
import 'package:brototype_video_app/presentation/core/extensions/context_extension.dart';
import 'package:brototype_video_app/presentation/core/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
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
