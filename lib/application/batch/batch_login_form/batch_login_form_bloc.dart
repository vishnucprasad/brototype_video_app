import 'package:brototype_video_app/domain/batch/auth/batch_credentials.dart';
import 'package:brototype_video_app/domain/core/failure.dart';
import 'package:brototype_video_app/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'batch_login_form_event.dart';
part 'batch_login_form_state.dart';
part 'batch_login_form_bloc.freezed.dart';

@injectable
class BatchLoginFormBloc
    extends Bloc<BatchLoginFormEvent, BatchLoginFormState> {
  BatchLoginFormBloc() : super(BatchLoginFormState.initial()) {
    on<BatchLoginFormEvent>((event, emit) async {
      await event.map(
        brachCodeChanged: (e) async => emit(state.copyWith(
          batchCredentials: state.batchCredentials.copyWith(
            branchCode: e.branchCode,
          ),
          failureOrSuccessOption: none(),
        )),
        batchNumberChanged: (e) async => emit(state.copyWith(
          batchCredentials: state.batchCredentials.copyWith(
            batchNumber: BatchNumber(e.batchNumber),
          ),
          failureOrSuccessOption: none(),
        )),
        passwordChanged: (e) async => emit(state.copyWith(
          batchCredentials: state.batchCredentials.copyWith(
            password: Password(e.password),
          ),
          failureOrSuccessOption: none(),
        )),
        obscureTextChanged: (_) async => emit(state.copyWith(
          hidePassword: !state.hidePassword,
          failureOrSuccessOption: none(),
        )),
        loginButtonPressed: (_) async {
          Either<Failure, Unit>? failureOrSuccess;

          if (state.batchCredentials.failureOption.isNone()) {
            emit(state.copyWith(
              isSubmitting: true,
              failureOrSuccessOption: none(),
            ));

            // login logic goes here
          }

          emit(state.copyWith(
            isSubmitting: false,
            showValidationError: true,
            failureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        },
      );
    });
  }
}
