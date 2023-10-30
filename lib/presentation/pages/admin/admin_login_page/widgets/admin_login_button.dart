import 'package:brototype_video_app/presentation/core/colors.dart';
import 'package:brototype_video_app/presentation/core/constants.dart';
import 'package:brototype_video_app/presentation/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AdminLoginButton extends StatelessWidget {
  const AdminLoginButton({
    required this.isLoading,
    Key? key,
  }) : super(key: key);

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
            context.isDarkMode ? kWhiteColor : kBlackColor,
          ),
          foregroundColor: MaterialStatePropertyAll<Color>(
            context.isDarkMode ? kBlackColor : kWhiteColor,
          ),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: isLoading
            ? const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Loging in...',
                    style: TextStyle(
                      fontFamily: 'Avenir Black',
                      fontSize: 18,
                    ),
                  ),
                  kWidth,
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      color: kBackgroundColor,
                      backgroundColor: kGreyColor,
                    ),
                  ),
                ],
              )
            : const Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'Avenir Black',
                  fontSize: 18,
                ),
              ),
      ),
    );
  }
}
