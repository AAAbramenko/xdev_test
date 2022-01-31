// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UploadResultTearOff {
  const _$UploadResultTearOff();

  UploadSuccess success({required String fileName, required String fileId}) {
    return UploadSuccess(
      fileName: fileName,
      fileId: fileId,
    );
  }

  UploadFault fault(
      {required String fileName,
      required String fileId,
      required String description}) {
    return UploadFault(
      fileName: fileName,
      fileId: fileId,
      description: description,
    );
  }

  UploadLimitExceeded limitExceeded(
      {required String fileName, required String fileId}) {
    return UploadLimitExceeded(
      fileName: fileName,
      fileId: fileId,
    );
  }
}

/// @nodoc
const $UploadResult = _$UploadResultTearOff();

/// @nodoc
mixin _$UploadResult {
  String get fileName => throw _privateConstructorUsedError;
  String get fileId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String fileId) success,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? success,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? success,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadSuccess value) success,
    required TResult Function(UploadFault value) fault,
    required TResult Function(UploadLimitExceeded value) limitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFault value)? fault,
    TResult Function(UploadLimitExceeded value)? limitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFault value)? fault,
    TResult Function(UploadLimitExceeded value)? limitExceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadResultCopyWith<UploadResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadResultCopyWith<$Res> {
  factory $UploadResultCopyWith(
          UploadResult value, $Res Function(UploadResult) then) =
      _$UploadResultCopyWithImpl<$Res>;
  $Res call({String fileName, String fileId});
}

/// @nodoc
class _$UploadResultCopyWithImpl<$Res> implements $UploadResultCopyWith<$Res> {
  _$UploadResultCopyWithImpl(this._value, this._then);

  final UploadResult _value;
  // ignore: unused_field
  final $Res Function(UploadResult) _then;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileId: fileId == freezed
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $UploadSuccessCopyWith<$Res>
    implements $UploadResultCopyWith<$Res> {
  factory $UploadSuccessCopyWith(
          UploadSuccess value, $Res Function(UploadSuccess) then) =
      _$UploadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({String fileName, String fileId});
}

/// @nodoc
class _$UploadSuccessCopyWithImpl<$Res> extends _$UploadResultCopyWithImpl<$Res>
    implements $UploadSuccessCopyWith<$Res> {
  _$UploadSuccessCopyWithImpl(
      UploadSuccess _value, $Res Function(UploadSuccess) _then)
      : super(_value, (v) => _then(v as UploadSuccess));

  @override
  UploadSuccess get _value => super._value as UploadSuccess;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
  }) {
    return _then(UploadSuccess(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileId: fileId == freezed
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadSuccess implements UploadSuccess {
  const _$UploadSuccess({required this.fileName, required this.fileId});

  @override
  final String fileName;
  @override
  final String fileId;

  @override
  String toString() {
    return 'UploadResult.success(fileName: $fileName, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadSuccess &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.fileId, fileId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(fileId));

  @JsonKey(ignore: true)
  @override
  $UploadSuccessCopyWith<UploadSuccess> get copyWith =>
      _$UploadSuccessCopyWithImpl<UploadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String fileId) success,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return success(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? success,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return success?.call(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? success,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(fileName, fileId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadSuccess value) success,
    required TResult Function(UploadFault value) fault,
    required TResult Function(UploadLimitExceeded value) limitExceeded,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFault value)? fault,
    TResult Function(UploadLimitExceeded value)? limitExceeded,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFault value)? fault,
    TResult Function(UploadLimitExceeded value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UploadSuccess implements UploadResult {
  const factory UploadSuccess(
      {required String fileName, required String fileId}) = _$UploadSuccess;

  @override
  String get fileName;
  @override
  String get fileId;
  @override
  @JsonKey(ignore: true)
  $UploadSuccessCopyWith<UploadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFaultCopyWith<$Res>
    implements $UploadResultCopyWith<$Res> {
  factory $UploadFaultCopyWith(
          UploadFault value, $Res Function(UploadFault) then) =
      _$UploadFaultCopyWithImpl<$Res>;
  @override
  $Res call({String fileName, String fileId, String description});
}

/// @nodoc
class _$UploadFaultCopyWithImpl<$Res> extends _$UploadResultCopyWithImpl<$Res>
    implements $UploadFaultCopyWith<$Res> {
  _$UploadFaultCopyWithImpl(
      UploadFault _value, $Res Function(UploadFault) _then)
      : super(_value, (v) => _then(v as UploadFault));

  @override
  UploadFault get _value => super._value as UploadFault;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
    Object? description = freezed,
  }) {
    return _then(UploadFault(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileId: fileId == freezed
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadFault implements UploadFault {
  const _$UploadFault(
      {required this.fileName,
      required this.fileId,
      required this.description});

  @override
  final String fileName;
  @override
  final String fileId;
  @override
  final String description;

  @override
  String toString() {
    return 'UploadResult.fault(fileName: $fileName, fileId: $fileId, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadFault &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.fileId, fileId) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(fileId),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  $UploadFaultCopyWith<UploadFault> get copyWith =>
      _$UploadFaultCopyWithImpl<UploadFault>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String fileId) success,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return fault(fileName, fileId, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? success,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return fault?.call(fileName, fileId, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? success,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) {
    if (fault != null) {
      return fault(fileName, fileId, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadSuccess value) success,
    required TResult Function(UploadFault value) fault,
    required TResult Function(UploadLimitExceeded value) limitExceeded,
  }) {
    return fault(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFault value)? fault,
    TResult Function(UploadLimitExceeded value)? limitExceeded,
  }) {
    return fault?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFault value)? fault,
    TResult Function(UploadLimitExceeded value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (fault != null) {
      return fault(this);
    }
    return orElse();
  }
}

abstract class UploadFault implements UploadResult {
  const factory UploadFault(
      {required String fileName,
      required String fileId,
      required String description}) = _$UploadFault;

  @override
  String get fileName;
  @override
  String get fileId;
  String get description;
  @override
  @JsonKey(ignore: true)
  $UploadFaultCopyWith<UploadFault> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadLimitExceededCopyWith<$Res>
    implements $UploadResultCopyWith<$Res> {
  factory $UploadLimitExceededCopyWith(
          UploadLimitExceeded value, $Res Function(UploadLimitExceeded) then) =
      _$UploadLimitExceededCopyWithImpl<$Res>;
  @override
  $Res call({String fileName, String fileId});
}

/// @nodoc
class _$UploadLimitExceededCopyWithImpl<$Res>
    extends _$UploadResultCopyWithImpl<$Res>
    implements $UploadLimitExceededCopyWith<$Res> {
  _$UploadLimitExceededCopyWithImpl(
      UploadLimitExceeded _value, $Res Function(UploadLimitExceeded) _then)
      : super(_value, (v) => _then(v as UploadLimitExceeded));

  @override
  UploadLimitExceeded get _value => super._value as UploadLimitExceeded;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
  }) {
    return _then(UploadLimitExceeded(
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileId: fileId == freezed
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadLimitExceeded implements UploadLimitExceeded {
  const _$UploadLimitExceeded({required this.fileName, required this.fileId});

  @override
  final String fileName;
  @override
  final String fileId;

  @override
  String toString() {
    return 'UploadResult.limitExceeded(fileName: $fileName, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadLimitExceeded &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.fileId, fileId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(fileId));

  @JsonKey(ignore: true)
  @override
  $UploadLimitExceededCopyWith<UploadLimitExceeded> get copyWith =>
      _$UploadLimitExceededCopyWithImpl<UploadLimitExceeded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String fileId) success,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return limitExceeded(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? success,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return limitExceeded?.call(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? success,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) {
    if (limitExceeded != null) {
      return limitExceeded(fileName, fileId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadSuccess value) success,
    required TResult Function(UploadFault value) fault,
    required TResult Function(UploadLimitExceeded value) limitExceeded,
  }) {
    return limitExceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFault value)? fault,
    TResult Function(UploadLimitExceeded value)? limitExceeded,
  }) {
    return limitExceeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFault value)? fault,
    TResult Function(UploadLimitExceeded value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (limitExceeded != null) {
      return limitExceeded(this);
    }
    return orElse();
  }
}

abstract class UploadLimitExceeded implements UploadResult {
  const factory UploadLimitExceeded(
      {required String fileName,
      required String fileId}) = _$UploadLimitExceeded;

  @override
  String get fileName;
  @override
  String get fileId;
  @override
  @JsonKey(ignore: true)
  $UploadLimitExceededCopyWith<UploadLimitExceeded> get copyWith =>
      throw _privateConstructorUsedError;
}
