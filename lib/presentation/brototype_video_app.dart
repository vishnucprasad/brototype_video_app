import 'package:another_flushbar/flushbar_helper.dart';
import 'package:brototype_video_app/application/admin/admin_auth/admin_auth_bloc.dart';
import 'package:brototype_video_app/application/admin/admin_bloc.dart';
import 'package:brototype_video_app/injection.dart';
import 'package:brototype_video_app/presentation/router/app_router.dart';
import 'package:brototype_video_app/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrototypeVideoApp extends StatelessWidget {
  BrototypeVideoApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AdminAuthBloc>()),
        BlocProvider(create: (context) => getIt<AdminBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AdminAuthBloc, AdminAuthState>(
            listener: (context, state) {
              state.map(
                initial: (_) => null,
                authenticated: (_) {
                  _appRouter.replace(const CreateBatchRoute());
                },
                unauthenticated: (_) {
                  _appRouter.replace(const AdminLoginRoute());
                },
              );
            },
          ),
          BlocListener<AdminBloc, AdminState>(
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
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: buildLightTheme(),
          darkTheme: buildDarkTheme(),
          routerConfig: _appRouter.config(),
        ),
      ),
    );
  }
}
