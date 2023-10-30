import 'package:brototype_video_app/application/batch/batch_login_form/batch_login_form_bloc.dart';
import 'package:brototype_video_app/presentation/core/colors.dart';
import 'package:brototype_video_app/presentation/core/extensions/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BatchPasswordField extends HookWidget {
  const BatchPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return BlocConsumer<BatchLoginFormBloc, BatchLoginFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text =
            state.batchCredentials.password.value.getOrElse(() => "");
      },
      builder: (context, state) {
        return TextFormField(
          controller: controller,
          autovalidateMode: state.showValidationError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          cursorColor: context.isDarkMode ? kWhiteColor : kBlackColor,
          decoration: InputDecoration(
            errorMaxLines: 3,
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
            hintText: 'Password',
            hintStyle: TextStyle(
              color: context.isDarkMode ? kGreyColor : kBlackColor,
            ),
            prefixIcon: Icon(
              Icons.lock_outline,
              color: context.isDarkMode ? kWhiteColor : kBlackColor,
            ),
            suffixIcon: IconButton(
              onPressed: () => context
                  .read<BatchLoginFormBloc>()
                  .add(const BatchLoginFormEvent.obscureTextChanged()),
              icon: Icon(
                state.hidePassword
                    ? CupertinoIcons.eye
                    : CupertinoIcons.eye_slash,
                color: context.isDarkMode ? kWhiteColor : kBlackColor,
              ),
            ),
          ),
          obscureText: state.hidePassword,
          style: TextStyle(
            color: context.isDarkMode ? kWhiteColor : kBlackColor,
          ),
          validator: (_) => context
              .read<BatchLoginFormBloc>()
              .state
              .batchCredentials
              .password
              .value
              .fold(
                (l) => l.map(
                  empty: (_) => "Password can't be empty",
                  invalid: (_) =>
                      "Password must be minimum six characters, at least one uppercase letter, one lowercase letter, one number and one special character.",
                ),
                (r) => null,
              ),
          onChanged: (batchPassword) => context
              .read<BatchLoginFormBloc>()
              .add(BatchLoginFormEvent.passwordChanged(batchPassword)),
        );
      },
    );
  }
}
