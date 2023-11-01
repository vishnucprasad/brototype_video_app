import 'package:another_flushbar/flushbar_helper.dart';
import 'package:brototype_video_app/application/batch/batch_bloc.dart';
import 'package:brototype_video_app/presentation/pages/batch/batch_videos_page/widgets/batch_videos_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BatchVideosListener extends StatelessWidget {
  const BatchVideosListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BatchBloc, BatchState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (f) {
              f.maybeMap(
                clientFailure: (e) => FlushbarHelper.createError(
                  message: e.msg,
                ).show(context),
                serverFailure: (e) => FlushbarHelper.createError(
                  message: e.msg,
                ).show(context),
                orElse: () => null,
              );
            },
            (_) => null,
          ),
        );
      },
      child: const BatchVideosBody(),
    );
  }
}
