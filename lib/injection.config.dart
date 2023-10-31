// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:brototype_video_app/application/admin/admin_auth/admin_auth_bloc.dart'
    as _i6;
import 'package:brototype_video_app/application/admin/admin_login_form/admin_login_form_bloc.dart'
    as _i7;
import 'package:brototype_video_app/application/batch/batch_login_form/batch_login_form_bloc.dart'
    as _i3;
import 'package:brototype_video_app/domain/admin/auth/i_admin_auth_facade.dart'
    as _i4;
import 'package:brototype_video_app/infrastructure/admin/auth/admin_auth_facade.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.BatchLoginFormBloc>(() => _i3.BatchLoginFormBloc());
    gh.factory<_i4.IAdminAuthFacade>(() => _i5.AdminAuthFacade());
    gh.factory<_i6.AdminAuthBloc>(
        () => _i6.AdminAuthBloc(gh<_i4.IAdminAuthFacade>()));
    gh.factory<_i7.AdminLoginFormBloc>(
        () => _i7.AdminLoginFormBloc(gh<_i4.IAdminAuthFacade>()));
    return this;
  }
}
