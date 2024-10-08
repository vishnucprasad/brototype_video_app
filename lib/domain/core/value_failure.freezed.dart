// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int minLength)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_ShortLength<T> value) shortLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_ShortLength<T> value)? shortLength,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_ShortLength<T> value)? shortLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExceedingLengthImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ExceedingLengthImplCopyWith(_$ExceedingLengthImpl<T> value,
          $Res Function(_$ExceedingLengthImpl<T>) then) =
      __$$ExceedingLengthImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int maxLength});
}

/// @nodoc
class __$$ExceedingLengthImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ExceedingLengthImpl<T>>
    implements _$$ExceedingLengthImplCopyWith<T, $Res> {
  __$$ExceedingLengthImplCopyWithImpl(_$ExceedingLengthImpl<T> _value,
      $Res Function(_$ExceedingLengthImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = null,
  }) {
    return _then(_$ExceedingLengthImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      maxLength: null == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLengthImpl<T> implements _ExceedingLength<T> {
  const _$ExceedingLengthImpl(
      {required this.failedValue, required this.maxLength});

  @override
  final T failedValue;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLengthImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), maxLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      __$$ExceedingLengthImplCopyWithImpl<T, _$ExceedingLengthImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) {
    return exceedingLength(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int minLength)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) {
    return exceedingLength?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_ShortLength<T> value) shortLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_ShortLength<T> value)? shortLength,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_ShortLength<T> value)? shortLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLength<T> implements ValueFailure<T> {
  const factory _ExceedingLength(
      {required final T failedValue,
      required final int maxLength}) = _$ExceedingLengthImpl<T>;

  @override
  T get failedValue;
  int get maxLength;
  @override
  @JsonKey(ignore: true)
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortLengthImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortLengthImplCopyWith(_$ShortLengthImpl<T> value,
          $Res Function(_$ShortLengthImpl<T>) then) =
      __$$ShortLengthImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int minLength});
}

/// @nodoc
class __$$ShortLengthImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortLengthImpl<T>>
    implements _$$ShortLengthImplCopyWith<T, $Res> {
  __$$ShortLengthImplCopyWithImpl(
      _$ShortLengthImpl<T> _value, $Res Function(_$ShortLengthImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? minLength = null,
  }) {
    return _then(_$ShortLengthImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      minLength: null == minLength
          ? _value.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ShortLengthImpl<T> implements _ShortLength<T> {
  const _$ShortLengthImpl({required this.failedValue, required this.minLength});

  @override
  final T failedValue;
  @override
  final int minLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortLength(failedValue: $failedValue, minLength: $minLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortLengthImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.minLength, minLength) ||
                other.minLength == minLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), minLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortLengthImplCopyWith<T, _$ShortLengthImpl<T>> get copyWith =>
      __$$ShortLengthImplCopyWithImpl<T, _$ShortLengthImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) {
    return shortLength(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int minLength)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) {
    return shortLength?.call(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) {
    if (shortLength != null) {
      return shortLength(failedValue, minLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_ShortLength<T> value) shortLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) {
    return shortLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_ShortLength<T> value)? shortLength,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) {
    return shortLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_ShortLength<T> value)? shortLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) {
    if (shortLength != null) {
      return shortLength(this);
    }
    return orElse();
  }
}

abstract class _ShortLength<T> implements ValueFailure<T> {
  const factory _ShortLength(
      {required final T failedValue,
      required final int minLength}) = _$ShortLengthImpl<T>;

  @override
  T get failedValue;
  int get minLength;
  @override
  @JsonKey(ignore: true)
  _$$ShortLengthImplCopyWith<T, _$ShortLengthImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T> implements _Empty<T> {
  const _$EmptyImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, _$EmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int minLength)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_ShortLength<T> value) shortLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_ShortLength<T> value)? shortLength,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_ShortLength<T> value)? shortLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements ValueFailure<T> {
  const factory _Empty({required final T failedValue}) = _$EmptyImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidImplCopyWith(
          _$InvalidImpl<T> value, $Res Function(_$InvalidImpl<T>) then) =
      __$$InvalidImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidImpl<T>>
    implements _$$InvalidImplCopyWith<T, $Res> {
  __$$InvalidImplCopyWithImpl(
      _$InvalidImpl<T> _value, $Res Function(_$InvalidImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidImpl<T> implements _Invalid<T> {
  const _$InvalidImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalid(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidImplCopyWith<T, _$InvalidImpl<T>> get copyWith =>
      __$$InvalidImplCopyWithImpl<T, _$InvalidImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) shortLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) {
    return invalid(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int minLength)? shortLength,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) {
    return invalid?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? shortLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_ShortLength<T> value) shortLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_ShortLength<T> value)? shortLength,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_ShortLength<T> value)? shortLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _Invalid<T> implements ValueFailure<T> {
  const factory _Invalid({required final T failedValue}) = _$InvalidImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidImplCopyWith<T, _$InvalidImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
