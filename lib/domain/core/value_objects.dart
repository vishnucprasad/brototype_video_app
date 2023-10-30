import 'package:brototype_video_app/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:brototype_video_app/domain/core/value_failure.dart';
import 'package:brototype_video_app/domain/core/value_object.dart';

class BatchNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory BatchNumber(String input) {
    return BatchNumber._(
      validateStringNotEmpty(input).flatMap(
        validateBatchNumber,
      ),
    );
  }
  const BatchNumber._(this.value);
}

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Username(String input) {
    return Username._(validateStringNotEmpty(input));
  }
  const Username._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    return Password._(
      validateStringNotEmpty(input).flatMap(
        validatePassWord,
      ),
    );
  }
  const Password._(this.value);
}
