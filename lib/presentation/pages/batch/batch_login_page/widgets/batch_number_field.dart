import 'package:brototype_video_app/presentation/core/colors.dart';
import 'package:brototype_video_app/presentation/core/constants.dart';
import 'package:brototype_video_app/presentation/core/extensions/context_extension.dart';
import 'package:brototype_video_app/presentation/pages/batch/batch_login_page/widgets/branch_code_dropdown.dart';
import 'package:flutter/material.dart';

class BatchNumberField extends StatelessWidget {
  const BatchNumberField({
    required this.onChanged,
    required this.dropdownValue,
    required this.onDropDownChanged,
    Key? key,
  }) : super(key: key);

  final void Function(String)? onChanged;
  final String? dropdownValue;
  final void Function(String?)? onDropDownChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: context.isDarkMode ? kBackgroundColor : kBackgroundColor,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          BranchCodeDropdown(
            value: dropdownValue,
            onChanged: onDropDownChanged,
          ),
          kWidth,
          Expanded(
            child: SizedBox(
              height: 42,
              child: TextFormField(
                cursorColor: context.isDarkMode ? kWhiteColor : kBlackColor,
                style: TextStyle(
                  color: context.isDarkMode ? kWhiteColor : kBlackColor,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Batch number",
                  hintStyle: TextStyle(
                    color: context.isDarkMode ? kGreyColor : kBlackColor,
                  ),
                ),
                onChanged: onChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
