import 'package:brototype_video_app/presentation/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:brototype_video_app/presentation/core/colors.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.body,
    super.key,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: context.isDarkMode
            ? kDarkBackgroundGradient
            : kLightBackgroundGradient,
      ),
      child: Scaffold(
        body: body,
      ),
    );
  }
}
