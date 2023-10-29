import 'package:auto_route/auto_route.dart';
import 'package:brototype_video_app/presentation/core/colors.dart';
import 'package:brototype_video_app/presentation/core/constants.dart';
import 'package:brototype_video_app/presentation/core/extensions/context_extension.dart';
import 'package:brototype_video_app/presentation/core/widgets/app_scaffold.dart';
import 'package:brototype_video_app/presentation/pages/batch/batch_login_page/widgets/batch_login_form.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BatchLoginPage extends StatelessWidget {
  const BatchLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return AppScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: size.height / 2,
                width: size.width - size.width / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: context.isDarkMode ? kLightLogo : kDarkLogo,
                  ),
                ),
              ),
            ),
            Container(
              height: size.height - size.height / 2,
              width: size.width,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: context.isDarkMode
                    ? kBackgroundColor.withOpacity(0.5)
                    : kGreyColor.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(48),
                  topRight: Radius.circular(48),
                ),
              ),
              child: const BatchLoginForm(),
            ),
          ],
        ),
      ),
    );
  }
}
