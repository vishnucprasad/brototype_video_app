import 'package:another_flushbar/flushbar_helper.dart';
import 'package:brototype_video_app/domain/batch/batch.dart';
import 'package:brototype_video_app/presentation/core/constants.dart';
import 'package:brototype_video_app/presentation/pages/batch/batch_videos_page/widgets/video_frame.dart';
import 'package:flutter/material.dart';

class VideoList extends StatelessWidget {
  const VideoList({
    super.key,
    required this.batch,
  });

  final Batch? batch;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: batch != null && batch!.videos.isNotEmpty
          ? ListView.builder(
              itemCount: batch?.videos.length,
              itemBuilder: (context, index) {
                final video = batch!.videos[index];
                final isLocked = video.url == null;
                return Column(
                  children: [
                    VideoFrame(
                      isLocked: isLocked,
                      thumbnail: video.thumbnail,
                      url: video.url,
                      description: video.description,
                      onPressed: () {
                        if (isLocked) {
                          FlushbarHelper.createError(
                            message: 'This video is locked!',
                          ).show(context);
                        }
                      },
                    ),
                    kHeightLarge,
                  ],
                );
              },
            )
          : const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.videocam_off,
                    size: 100,
                  ),
                  Text(
                    "No videos available",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
