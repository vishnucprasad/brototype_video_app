part of 'create_batch_form_bloc.dart';

@freezed
class CreateBatchFormState with _$CreateBatchFormState {
  const factory CreateBatchFormState({
    required bool isSubmitting,
    required bool hidePassword,
    required bool showValidationError,
    required BatchCredentials batchCredentials,
    required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _CreateBatchFormState;

  factory CreateBatchFormState.initial() {
    return CreateBatchFormState(
      isSubmitting: false,
      hidePassword: true,
      showValidationError: false,
      batchCredentials: BatchCredentials.empty(),
      failureOrSuccessOption: none(),
    );
  }
}
