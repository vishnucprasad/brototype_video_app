import 'package:brototype_video_app/domain/admin/auth/i_admin_auth_facade.dart';
import 'package:brototype_video_app/domain/core/tokens.dart';
import 'package:brototype_video_app/injection.dart';
import 'package:dio/dio.dart';

extension DioX on Dio {
  Future<Tokens?> getAdminTokens() async {
    final tokenOption = await getIt<IAdminAuthFacade>().getSavedTokens();
    return tokenOption.fold(
      () => null,
      (tokens) => tokens,
    );
  }
}
