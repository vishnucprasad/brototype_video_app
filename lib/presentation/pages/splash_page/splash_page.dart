import 'package:auto_route/auto_route.dart';
import 'package:brototype_video_app/presentation/core/colors.dart';
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
    final Size size = MediaQuery.of(context).size;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3));
      // ignore: use_build_context_synchronously
      context.replaceRoute(const BatchLoginRoute());
    });

    return AppScaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height / 2,
                width: size.width - size.width / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: context.isDarkMode ? kLightLogo : kDarkLogo,
                  ),
                ),
              ),
              Text(
                'Authenticating...',
                style: TextStyle(
                  color: context.isDarkMode ? kWhiteColor : kBlackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeightMedium,
              SizedBox(
                width: size.width / 2,
                child: LinearProgressIndicator(
                  color: context.isDarkMode ? kBackgroundColor : kGreyColor,
                  backgroundColor:
                      context.isDarkMode ? kWhiteColor : kBlackColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
