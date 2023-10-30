import 'package:brototype_video_app/presentation/core/colors.dart';
import 'package:brototype_video_app/presentation/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AdminUsernameField extends StatelessWidget {
  const AdminUsernameField({
    required this.onChanged,
    super.key,
  });

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kWhiteColor,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: context.isDarkMode ? kBackgroundColor : kBackgroundColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: context.isDarkMode ? kBackgroundColor : kBackgroundColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: context.isDarkMode ? kBackgroundColor : kBackgroundColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: context.isDarkMode ? kBackgroundColor : kBackgroundColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: context.isDarkMode ? kBackgroundColor : kBackgroundColor,
          ),
        ),
        hintText: "Username",
        hintStyle: const TextStyle(
          color: kGreyColor,
        ),
        prefixIcon: Icon(
          Icons.person,
          color: context.isDarkMode ? kWhiteColor : kBlackColor,
        ),
      ),
      style: const TextStyle(
        color: kWhiteColor,
      ),
      onChanged: onChanged,
    );
  }
}
