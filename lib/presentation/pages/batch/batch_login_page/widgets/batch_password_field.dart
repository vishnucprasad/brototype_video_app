import 'package:brototype_video_app/presentation/core/colors.dart';
import 'package:brototype_video_app/presentation/core/extensions/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BatchPasswordField extends StatelessWidget {
  const BatchPasswordField({
    required this.hintText,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: context.isDarkMode ? kWhiteColor : kBlackColor,
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
        hintText: hintText,
        hintStyle: TextStyle(
          color: context.isDarkMode ? kGreyColor : kBlackColor,
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.eye,
            color: context.isDarkMode ? kWhiteColor : kBlackColor,
          ),
        ),
      ),
      obscureText: true,
      style: TextStyle(
        color: context.isDarkMode ? kWhiteColor : kBlackColor,
      ),
      onChanged: onChanged,
    );
  }
}
