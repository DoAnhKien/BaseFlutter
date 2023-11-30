// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Message<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tr, String? content) warning,
    required TResult Function(String? content) error,
    required TResult Function(String? content) success,
    required TResult Function() networkError,
    required TResult Function(T? content) data,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tr, String? content)? warning,
    TResult? Function(String? content)? error,
    TResult? Function(String? content)? success,
    TResult? Function()? networkError,
    TResult? Function(T? content)? data,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tr, String? content)? warning,
    TResult Function(String? content)? error,
    TResult Function(String? content)? success,
    TResult Function()? networkError,
    TResult Function(T? content)? data,
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Warning<T> value) warning,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_NetworkLostConnect<T> value) networkError,
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Warning<T> value)? warning,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_NetworkLostConnect<T> value)? networkError,
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Warning<T> value)? warning,
    TResult Function(_Error<T> value)? error,
    TResult Function(_Success<T> value)? success,
    TResult Function(_NetworkLostConnect<T> value)? networkError,
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<T, $Res> {
  factory $MessageCopyWith(Message<T> value, $Res Function(Message<T>) then) =
      _$MessageCopyWithImpl<T, $Res, Message<T>>;
}

/// @nodoc
class _$MessageCopyWithImpl<T, $Res, $Val extends Message<T>>
    implements $MessageCopyWith<T, $Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WarningImplCopyWith<T, $Res> {
  factory _$$WarningImplCopyWith(
          _$WarningImpl<T> value, $Res Function(_$WarningImpl<T>) then) =
      __$$WarningImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String tr, String? content});
}

/// @nodoc
class __$$WarningImplCopyWithImpl<T, $Res>
    extends _$MessageCopyWithImpl<T, $Res, _$WarningImpl<T>>
    implements _$$WarningImplCopyWith<T, $Res> {
  __$$WarningImplCopyWithImpl(
      _$WarningImpl<T> _value, $Res Function(_$WarningImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tr = null,
    Object? content = freezed,
  }) {
    return _then(_$WarningImpl<T>(
      null == tr
          ? _value.tr
          : tr // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WarningImpl<T> implements _Warning<T> {
  const _$WarningImpl(this.tr, {this.content});

  @override
  final String tr;
  @override
  final String? content;

  @override
  String toString() {
    return 'Message<$T>.warning(tr: $tr, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarningImpl<T> &&
            (identical(other.tr, tr) || other.tr == tr) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tr, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarningImplCopyWith<T, _$WarningImpl<T>> get copyWith =>
      __$$WarningImplCopyWithImpl<T, _$WarningImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tr, String? content) warning,
    required TResult Function(String? content) error,
    required TResult Function(String? content) success,
    required TResult Function() networkError,
    required TResult Function(T? content) data,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return warning(tr, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tr, String? content)? warning,
    TResult? Function(String? content)? error,
    TResult? Function(String? content)? success,
    TResult? Function()? networkError,
    TResult? Function(T? content)? data,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return warning?.call(tr, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tr, String? content)? warning,
    TResult Function(String? content)? error,
    TResult Function(String? content)? success,
    TResult Function()? networkError,
    TResult Function(T? content)? data,
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (warning != null) {
      return warning(tr, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Warning<T> value) warning,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_NetworkLostConnect<T> value) networkError,
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
  }) {
    return warning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Warning<T> value)? warning,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_NetworkLostConnect<T> value)? networkError,
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
  }) {
    return warning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Warning<T> value)? warning,
    TResult Function(_Error<T> value)? error,
    TResult Function(_Success<T> value)? success,
    TResult Function(_NetworkLostConnect<T> value)? networkError,
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (warning != null) {
      return warning(this);
    }
    return orElse();
  }
}

abstract class _Warning<T> implements Message<T> {
  const factory _Warning(final String tr, {final String? content}) =
      _$WarningImpl<T>;

  String get tr;
  String? get content;
  @JsonKey(ignore: true)
  _$$WarningImplCopyWith<T, _$WarningImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? content});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$MessageCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_$ErrorImpl<T>(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> implements _Error<T> {
  const _$ErrorImpl({this.content});

  @override
  final String? content;

  @override
  String toString() {
    return 'Message<$T>.error(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tr, String? content) warning,
    required TResult Function(String? content) error,
    required TResult Function(String? content) success,
    required TResult Function() networkError,
    required TResult Function(T? content) data,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return error(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tr, String? content)? warning,
    TResult? Function(String? content)? error,
    TResult? Function(String? content)? success,
    TResult? Function()? networkError,
    TResult? Function(T? content)? data,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return error?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tr, String? content)? warning,
    TResult Function(String? content)? error,
    TResult Function(String? content)? success,
    TResult Function()? networkError,
    TResult Function(T? content)? data,
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Warning<T> value) warning,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_NetworkLostConnect<T> value) networkError,
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Warning<T> value)? warning,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_NetworkLostConnect<T> value)? networkError,
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Warning<T> value)? warning,
    TResult Function(_Error<T> value)? error,
    TResult Function(_Success<T> value)? success,
    TResult Function(_NetworkLostConnect<T> value)? networkError,
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements Message<T> {
  const factory _Error({final String? content}) = _$ErrorImpl<T>;

  String? get content;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? content});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$MessageCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_$SuccessImpl<T>(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> implements _Success<T> {
  const _$SuccessImpl({this.content});

  @override
  final String? content;

  @override
  String toString() {
    return 'Message<$T>.success(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tr, String? content) warning,
    required TResult Function(String? content) error,
    required TResult Function(String? content) success,
    required TResult Function() networkError,
    required TResult Function(T? content) data,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return success(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tr, String? content)? warning,
    TResult? Function(String? content)? error,
    TResult? Function(String? content)? success,
    TResult? Function()? networkError,
    TResult? Function(T? content)? data,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return success?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tr, String? content)? warning,
    TResult Function(String? content)? error,
    TResult Function(String? content)? success,
    TResult Function()? networkError,
    TResult Function(T? content)? data,
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Warning<T> value) warning,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_NetworkLostConnect<T> value) networkError,
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Warning<T> value)? warning,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_NetworkLostConnect<T> value)? networkError,
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Warning<T> value)? warning,
    TResult Function(_Error<T> value)? error,
    TResult Function(_Success<T> value)? success,
    TResult Function(_NetworkLostConnect<T> value)? networkError,
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements Message<T> {
  const factory _Success({final String? content}) = _$SuccessImpl<T>;

  String? get content;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkLostConnectImplCopyWith<T, $Res> {
  factory _$$NetworkLostConnectImplCopyWith(_$NetworkLostConnectImpl<T> value,
          $Res Function(_$NetworkLostConnectImpl<T>) then) =
      __$$NetworkLostConnectImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NetworkLostConnectImplCopyWithImpl<T, $Res>
    extends _$MessageCopyWithImpl<T, $Res, _$NetworkLostConnectImpl<T>>
    implements _$$NetworkLostConnectImplCopyWith<T, $Res> {
  __$$NetworkLostConnectImplCopyWithImpl(_$NetworkLostConnectImpl<T> _value,
      $Res Function(_$NetworkLostConnectImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkLostConnectImpl<T> implements _NetworkLostConnect<T> {
  const _$NetworkLostConnectImpl();

  @override
  String toString() {
    return 'Message<$T>.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkLostConnectImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tr, String? content) warning,
    required TResult Function(String? content) error,
    required TResult Function(String? content) success,
    required TResult Function() networkError,
    required TResult Function(T? content) data,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tr, String? content)? warning,
    TResult? Function(String? content)? error,
    TResult? Function(String? content)? success,
    TResult? Function()? networkError,
    TResult? Function(T? content)? data,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tr, String? content)? warning,
    TResult Function(String? content)? error,
    TResult Function(String? content)? success,
    TResult Function()? networkError,
    TResult Function(T? content)? data,
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Warning<T> value) warning,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_NetworkLostConnect<T> value) networkError,
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Warning<T> value)? warning,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_NetworkLostConnect<T> value)? networkError,
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Warning<T> value)? warning,
    TResult Function(_Error<T> value)? error,
    TResult Function(_Success<T> value)? success,
    TResult Function(_NetworkLostConnect<T> value)? networkError,
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkLostConnect<T> implements Message<T> {
  const factory _NetworkLostConnect() = _$NetworkLostConnectImpl<T>;
}

/// @nodoc
abstract class _$$DataImplCopyWith<T, $Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl<T> value, $Res Function(_$DataImpl<T>) then) =
      __$$DataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? content});
}

/// @nodoc
class __$$DataImplCopyWithImpl<T, $Res>
    extends _$MessageCopyWithImpl<T, $Res, _$DataImpl<T>>
    implements _$$DataImplCopyWith<T, $Res> {
  __$$DataImplCopyWithImpl(
      _$DataImpl<T> _value, $Res Function(_$DataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_$DataImpl<T>(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$DataImpl<T> implements _Data<T> {
  _$DataImpl({this.content});

  @override
  final T? content;

  @override
  String toString() {
    return 'Message<$T>.data(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl<T> &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<T, _$DataImpl<T>> get copyWith =>
      __$$DataImplCopyWithImpl<T, _$DataImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tr, String? content) warning,
    required TResult Function(String? content) error,
    required TResult Function(String? content) success,
    required TResult Function() networkError,
    required TResult Function(T? content) data,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return data(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tr, String? content)? warning,
    TResult? Function(String? content)? error,
    TResult? Function(String? content)? success,
    TResult? Function()? networkError,
    TResult? Function(T? content)? data,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return data?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tr, String? content)? warning,
    TResult Function(String? content)? error,
    TResult Function(String? content)? success,
    TResult Function()? networkError,
    TResult Function(T? content)? data,
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Warning<T> value) warning,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_NetworkLostConnect<T> value) networkError,
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Warning<T> value)? warning,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_NetworkLostConnect<T> value)? networkError,
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Warning<T> value)? warning,
    TResult Function(_Error<T> value)? error,
    TResult Function(_Success<T> value)? success,
    TResult Function(_NetworkLostConnect<T> value)? networkError,
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data<T> implements Message<T> {
  factory _Data({final T? content}) = _$DataImpl<T>;

  T? get content;
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<T, _$DataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$MessageCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> implements _Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'Message<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tr, String? content) warning,
    required TResult Function(String? content) error,
    required TResult Function(String? content) success,
    required TResult Function() networkError,
    required TResult Function(T? content) data,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tr, String? content)? warning,
    TResult? Function(String? content)? error,
    TResult? Function(String? content)? success,
    TResult? Function()? networkError,
    TResult? Function(T? content)? data,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tr, String? content)? warning,
    TResult Function(String? content)? error,
    TResult Function(String? content)? success,
    TResult Function()? networkError,
    TResult Function(T? content)? data,
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Warning<T> value) warning,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_NetworkLostConnect<T> value) networkError,
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Warning<T> value)? warning,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_NetworkLostConnect<T> value)? networkError,
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Warning<T> value)? warning,
    TResult Function(_Error<T> value)? error,
    TResult Function(_Success<T> value)? success,
    TResult Function(_NetworkLostConnect<T> value)? networkError,
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements Message<T> {
  const factory _Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<T, $Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl<T> value, $Res Function(_$LoadedImpl<T>) then) =
      __$$LoadedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<T, $Res>
    extends _$MessageCopyWithImpl<T, $Res, _$LoadedImpl<T>>
    implements _$$LoadedImplCopyWith<T, $Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl<T> _value, $Res Function(_$LoadedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl<T> implements _Loaded<T> {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'Message<$T>.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tr, String? content) warning,
    required TResult Function(String? content) error,
    required TResult Function(String? content) success,
    required TResult Function() networkError,
    required TResult Function(T? content) data,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tr, String? content)? warning,
    TResult? Function(String? content)? error,
    TResult? Function(String? content)? success,
    TResult? Function()? networkError,
    TResult? Function(T? content)? data,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tr, String? content)? warning,
    TResult Function(String? content)? error,
    TResult Function(String? content)? success,
    TResult Function()? networkError,
    TResult Function(T? content)? data,
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Warning<T> value) warning,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_Success<T> value) success,
    required TResult Function(_NetworkLostConnect<T> value) networkError,
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Warning<T> value)? warning,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_NetworkLostConnect<T> value)? networkError,
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Loaded<T> value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Warning<T> value)? warning,
    TResult Function(_Error<T> value)? error,
    TResult Function(_Success<T> value)? success,
    TResult Function(_NetworkLostConnect<T> value)? networkError,
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded<T> implements Message<T> {
  const factory _Loaded() = _$LoadedImpl<T>;
}
