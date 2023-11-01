import 'package:auto_route/auto_route.dart';
import 'package:brototype_video_app/presentation/core/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BatchVideosPage extends StatelessWidget {
  const BatchVideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: Center(
        child: Text('Batch Videos Page'),
      ),
    );
  }
}
