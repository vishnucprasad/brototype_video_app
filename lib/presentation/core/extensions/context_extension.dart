import 'package:brototype_video_app/presentation/core/widgets/confirmation_dialog.dart';
import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;
  bool get isDarkMode => platformBrightness == Brightness.dark;
  void showVideoActionDialog({
    required bool isLocked,
    required void Function() onConfirm,
  }) async {
    return showDialog(
      context: this,
      builder: (context) => ConfirmationDialog(
        isLocked: isLocked,
        onConfirm: onConfirm,
      ),
    );
  }
}
