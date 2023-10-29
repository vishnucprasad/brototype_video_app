import 'package:brototype_video_app/presentation/core/colors.dart';
import 'package:brototype_video_app/presentation/core/extensions/context_extension.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class BranchCodeDropdown extends StatelessWidget {
  BranchCodeDropdown({
    required this.value,
    required this.onChanged,
    super.key,
  });

  final String? value;
  final void Function(String?)? onChanged;

  final List<String> items = [
    'BCK',
    'BCE',
    'BCT',
    'BCB',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        hint: const Text(
          'Select',
          style: TextStyle(
            fontSize: 14,
            color: kWhiteColor,
          ),
        ),
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: 14,
                      color: context.isDarkMode ? kWhiteColor : kBlackColor,
                    ),
                  ),
                ))
            .toList(),
        value: value,
        onChanged: onChanged,
        icon: const Icon(
          Icons.keyboard_arrow_down,
        ),
        iconSize: 14,
        iconEnabledColor: context.isDarkMode ? kWhiteColor : kBlackColor,
        buttonHeight: 42,
        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: BoxDecoration(
          boxShadow: List.empty(),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: context.isDarkMode ? kBackgroundColor : kGreyColor,
          ),
          color: context.isDarkMode ? kBackgroundColor : kGreyColor,
        ),
        buttonElevation: 2,
        itemHeight: 40,
        dropdownMaxHeight: 200,
        dropdownWidth: 80,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.isDarkMode ? kBackgroundColor : kGreyColor,
        ),
        dropdownElevation: 8,
        scrollbarRadius: const Radius.circular(40),
        scrollbarThickness: 6,
        scrollbarAlwaysShow: true,
        offset: const Offset(0, -10),
      ),
    );
  }
}
