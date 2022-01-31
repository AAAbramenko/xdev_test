// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_uploading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FileUploadingStateTearOff {
  const _$FileUploadingStateTearOff();

  FileUploadingInitialState initial() {
    return const FileUploadingInitialState();
  }

  FileWaitingState waiting({required String fileName, required String fileId}) {
    return FileWaitingState(
      fileName: fileName,
      fileId: fileId,
    );
  }

  FileUploadingProgressState uploading(
      {required String fileName, required String fileId}) {
    return FileUploadingProgressState(
      fileName: fileName,
      fileId: fileId,
    );
  }

  FileUploadedState uploaded(
      {required String fileName, required String fileId}) {
    return FileUploadedState(
      fileName: fileName,
      fileId: fileId,
    );
  }

  FileUploadFaultState fault(
      {required String fileName,
      required String fileId,
      required String description}) {
    return FileUploadFaultState(
      fileName: fileName,
      fileId: fileId,
      description: description,
    );
  }

  FileUploadCancelledState cancel(
      {required String fileName, required String fileId}) {
    return FileUploadCancelledState(
      fileName: fileName,
      fileId: fileId,
    );
  }

  AllUploadsCancelledState cancelAll() {
    return const AllUploadsCancelledState();
  }

  UploadsLimitExceededState limitExceeded(
      {required String fileName, required String fileId}) {
    return UploadsLimitExceededState(
      fileName: fileName,
      fileId: fileId,
    );
  }
}

/// @nodoc
const $FileUploadingState = _$FileUploadingStateTearOff();

/// @nodoc
mixin _$FileUploadingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) uploading,
    required TResult Function(String fileName, String fileId) uploaded,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) cancel,
    required TResult Function() cancelAll,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadingInitialState value) initial,
    required TResult Function(FileWaitingState value) waiting,
    required TResult Function(FileUploadingProgressState value) uploading,
    required TResult Function(FileUploadedState value) uploaded,
    required TResult Function(FileUploadFaultState value) fault,
    required TResult Function(FileUploadCancelledState value) cancel,
    required TResult Function(AllUploadsCancelledState value) cancelAll,
    required TResult Function(UploadsLimitExceededState value) limitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadingStateCopyWith<$Res> {
  factory $FileUploadingStateCopyWith(
          FileUploadingState value, $Res Function(FileUploadingState) then) =
      _$FileUploadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileUploadingStateCopyWithImpl<$Res>
    implements $FileUploadingStateCopyWith<$Res> {
  _$FileUploadingStateCopyWithImpl(this._value, this._then);

  final FileUploadingState _value;
  // ignore: unused_field
  final $Res Function(FileUploadingState) _then;
}

/// @nodoc
abstract class $FileUploadingInitialStateCopyWith<$Res> {
  factory $FileUploadingInitialStateCopyWith(FileUploadingInitialState value,
          $Res Function(FileUploadingInitialState) then) =
      _$FileUploadingInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileUploadingInitialStateCopyWithImpl<$Res>
    extends _$FileUploadingStateCopyWithImpl<$Res>
    implements $FileUploadingInitialStateCopyWith<$Res> {
  _$FileUploadingInitialStateCopyWithImpl(FileUploadingInitialState _value,
      $Res Function(FileUploadingInitialState) _then)
      : super(_value, (v) => _then(v as FileUploadingInitialState));

  @override
  FileUploadingInitialState get _value =>
      super._value as FileUploadingInitialState;
}

/// @nodoc

class _$FileUploadingInitialState implements FileUploadingInitialState {
  const _$FileUploadingInitialState();

  @override
  String toString() {
    return 'FileUploadingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploadingInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) uploading,
    required TResult Function(String fileName, String fileId) uploaded,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) cancel,
    required TResult Function() cancelAll,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadingInitialState value) initial,
    required TResult Function(FileWaitingState value) waiting,
    required TResult Function(FileUploadingProgressState value) uploading,
    required TResult Function(FileUploadedState value) uploaded,
    required TResult Function(FileUploadFaultState value) fault,
    required TResult Function(FileUploadCancelledState value) cancel,
    required TResult Function(AllUploadsCancelledState value) cancelAll,
    required TResult Function(UploadsLimitExceededState value) limitExceeded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FileUploadingInitialState implements FileUploadingState {
  const factory FileUploadingInitialState() = _$FileUploadingInitialState;
}

/// @nodoc
abstract class $FileWaitingStateCopyWith<$Res> {
  factory $FileWaitingStateCopyWith(
          FileWaitingState value, $Res Function(FileWaitingState) then) =
      _$FileWaitingStateCopyWithImpl<$Res>;
  $Res call({String fileName, String fileId});
}

/// @nodoc
class _$FileWaitingStateCopyWithImpl<$Res>
    extends _$FileUploadingStateCopyWithImpl<$Res>
    implements $FileWaitingStateCopyWith<$Res> {
  _$FileWaitingStateCopyWithImpl(
      FileWaitingState _value, $Res Function(FileWaitingState) _then)
      : super(_value, (v) => _then(v as FileWaitingState));

  @override
  FileWaitingState get _value => super._value as FileWaitingState;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
  }) {
    return _then(FileWaitingState(
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

class _$FileWaitingState implements FileWaitingState {
  const _$FileWaitingState({required this.fileName, required this.fileId});

  @override
  final String fileName;
  @override
  final String fileId;

  @override
  String toString() {
    return 'FileUploadingState.waiting(fileName: $fileName, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileWaitingState &&
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
  $FileWaitingStateCopyWith<FileWaitingState> get copyWith =>
      _$FileWaitingStateCopyWithImpl<FileWaitingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) uploading,
    required TResult Function(String fileName, String fileId) uploaded,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) cancel,
    required TResult Function() cancelAll,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return waiting(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return waiting?.call(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(fileName, fileId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadingInitialState value) initial,
    required TResult Function(FileWaitingState value) waiting,
    required TResult Function(FileUploadingProgressState value) uploading,
    required TResult Function(FileUploadedState value) uploaded,
    required TResult Function(FileUploadFaultState value) fault,
    required TResult Function(FileUploadCancelledState value) cancel,
    required TResult Function(AllUploadsCancelledState value) cancelAll,
    required TResult Function(UploadsLimitExceededState value) limitExceeded,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class FileWaitingState implements FileUploadingState {
  const factory FileWaitingState(
      {required String fileName, required String fileId}) = _$FileWaitingState;

  String get fileName;
  String get fileId;
  @JsonKey(ignore: true)
  $FileWaitingStateCopyWith<FileWaitingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadingProgressStateCopyWith<$Res> {
  factory $FileUploadingProgressStateCopyWith(FileUploadingProgressState value,
          $Res Function(FileUploadingProgressState) then) =
      _$FileUploadingProgressStateCopyWithImpl<$Res>;
  $Res call({String fileName, String fileId});
}

/// @nodoc
class _$FileUploadingProgressStateCopyWithImpl<$Res>
    extends _$FileUploadingStateCopyWithImpl<$Res>
    implements $FileUploadingProgressStateCopyWith<$Res> {
  _$FileUploadingProgressStateCopyWithImpl(FileUploadingProgressState _value,
      $Res Function(FileUploadingProgressState) _then)
      : super(_value, (v) => _then(v as FileUploadingProgressState));

  @override
  FileUploadingProgressState get _value =>
      super._value as FileUploadingProgressState;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
  }) {
    return _then(FileUploadingProgressState(
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

class _$FileUploadingProgressState implements FileUploadingProgressState {
  const _$FileUploadingProgressState(
      {required this.fileName, required this.fileId});

  @override
  final String fileName;
  @override
  final String fileId;

  @override
  String toString() {
    return 'FileUploadingState.uploading(fileName: $fileName, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploadingProgressState &&
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
  $FileUploadingProgressStateCopyWith<FileUploadingProgressState>
      get copyWith =>
          _$FileUploadingProgressStateCopyWithImpl<FileUploadingProgressState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) uploading,
    required TResult Function(String fileName, String fileId) uploaded,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) cancel,
    required TResult Function() cancelAll,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return uploading(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return uploading?.call(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(fileName, fileId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadingInitialState value) initial,
    required TResult Function(FileWaitingState value) waiting,
    required TResult Function(FileUploadingProgressState value) uploading,
    required TResult Function(FileUploadedState value) uploaded,
    required TResult Function(FileUploadFaultState value) fault,
    required TResult Function(FileUploadCancelledState value) cancel,
    required TResult Function(AllUploadsCancelledState value) cancelAll,
    required TResult Function(UploadsLimitExceededState value) limitExceeded,
  }) {
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
  }) {
    return uploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class FileUploadingProgressState implements FileUploadingState {
  const factory FileUploadingProgressState(
      {required String fileName,
      required String fileId}) = _$FileUploadingProgressState;

  String get fileName;
  String get fileId;
  @JsonKey(ignore: true)
  $FileUploadingProgressStateCopyWith<FileUploadingProgressState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadedStateCopyWith<$Res> {
  factory $FileUploadedStateCopyWith(
          FileUploadedState value, $Res Function(FileUploadedState) then) =
      _$FileUploadedStateCopyWithImpl<$Res>;
  $Res call({String fileName, String fileId});
}

/// @nodoc
class _$FileUploadedStateCopyWithImpl<$Res>
    extends _$FileUploadingStateCopyWithImpl<$Res>
    implements $FileUploadedStateCopyWith<$Res> {
  _$FileUploadedStateCopyWithImpl(
      FileUploadedState _value, $Res Function(FileUploadedState) _then)
      : super(_value, (v) => _then(v as FileUploadedState));

  @override
  FileUploadedState get _value => super._value as FileUploadedState;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
  }) {
    return _then(FileUploadedState(
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

class _$FileUploadedState implements FileUploadedState {
  const _$FileUploadedState({required this.fileName, required this.fileId});

  @override
  final String fileName;
  @override
  final String fileId;

  @override
  String toString() {
    return 'FileUploadingState.uploaded(fileName: $fileName, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploadedState &&
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
  $FileUploadedStateCopyWith<FileUploadedState> get copyWith =>
      _$FileUploadedStateCopyWithImpl<FileUploadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) uploading,
    required TResult Function(String fileName, String fileId) uploaded,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) cancel,
    required TResult Function() cancelAll,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return uploaded(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return uploaded?.call(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(fileName, fileId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadingInitialState value) initial,
    required TResult Function(FileWaitingState value) waiting,
    required TResult Function(FileUploadingProgressState value) uploading,
    required TResult Function(FileUploadedState value) uploaded,
    required TResult Function(FileUploadFaultState value) fault,
    required TResult Function(FileUploadCancelledState value) cancel,
    required TResult Function(AllUploadsCancelledState value) cancelAll,
    required TResult Function(UploadsLimitExceededState value) limitExceeded,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class FileUploadedState implements FileUploadingState {
  const factory FileUploadedState(
      {required String fileName, required String fileId}) = _$FileUploadedState;

  String get fileName;
  String get fileId;
  @JsonKey(ignore: true)
  $FileUploadedStateCopyWith<FileUploadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadFaultStateCopyWith<$Res> {
  factory $FileUploadFaultStateCopyWith(FileUploadFaultState value,
          $Res Function(FileUploadFaultState) then) =
      _$FileUploadFaultStateCopyWithImpl<$Res>;
  $Res call({String fileName, String fileId, String description});
}

/// @nodoc
class _$FileUploadFaultStateCopyWithImpl<$Res>
    extends _$FileUploadingStateCopyWithImpl<$Res>
    implements $FileUploadFaultStateCopyWith<$Res> {
  _$FileUploadFaultStateCopyWithImpl(
      FileUploadFaultState _value, $Res Function(FileUploadFaultState) _then)
      : super(_value, (v) => _then(v as FileUploadFaultState));

  @override
  FileUploadFaultState get _value => super._value as FileUploadFaultState;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
    Object? description = freezed,
  }) {
    return _then(FileUploadFaultState(
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

class _$FileUploadFaultState implements FileUploadFaultState {
  const _$FileUploadFaultState(
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
    return 'FileUploadingState.fault(fileName: $fileName, fileId: $fileId, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploadFaultState &&
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
  $FileUploadFaultStateCopyWith<FileUploadFaultState> get copyWith =>
      _$FileUploadFaultStateCopyWithImpl<FileUploadFaultState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) uploading,
    required TResult Function(String fileName, String fileId) uploaded,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) cancel,
    required TResult Function() cancelAll,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return fault(fileName, fileId, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return fault?.call(fileName, fileId, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
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
    required TResult Function(FileUploadingInitialState value) initial,
    required TResult Function(FileWaitingState value) waiting,
    required TResult Function(FileUploadingProgressState value) uploading,
    required TResult Function(FileUploadedState value) uploaded,
    required TResult Function(FileUploadFaultState value) fault,
    required TResult Function(FileUploadCancelledState value) cancel,
    required TResult Function(AllUploadsCancelledState value) cancelAll,
    required TResult Function(UploadsLimitExceededState value) limitExceeded,
  }) {
    return fault(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
  }) {
    return fault?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (fault != null) {
      return fault(this);
    }
    return orElse();
  }
}

abstract class FileUploadFaultState implements FileUploadingState {
  const factory FileUploadFaultState(
      {required String fileName,
      required String fileId,
      required String description}) = _$FileUploadFaultState;

  String get fileName;
  String get fileId;
  String get description;
  @JsonKey(ignore: true)
  $FileUploadFaultStateCopyWith<FileUploadFaultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadCancelledStateCopyWith<$Res> {
  factory $FileUploadCancelledStateCopyWith(FileUploadCancelledState value,
          $Res Function(FileUploadCancelledState) then) =
      _$FileUploadCancelledStateCopyWithImpl<$Res>;
  $Res call({String fileName, String fileId});
}

/// @nodoc
class _$FileUploadCancelledStateCopyWithImpl<$Res>
    extends _$FileUploadingStateCopyWithImpl<$Res>
    implements $FileUploadCancelledStateCopyWith<$Res> {
  _$FileUploadCancelledStateCopyWithImpl(FileUploadCancelledState _value,
      $Res Function(FileUploadCancelledState) _then)
      : super(_value, (v) => _then(v as FileUploadCancelledState));

  @override
  FileUploadCancelledState get _value =>
      super._value as FileUploadCancelledState;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
  }) {
    return _then(FileUploadCancelledState(
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

class _$FileUploadCancelledState implements FileUploadCancelledState {
  const _$FileUploadCancelledState(
      {required this.fileName, required this.fileId});

  @override
  final String fileName;
  @override
  final String fileId;

  @override
  String toString() {
    return 'FileUploadingState.cancel(fileName: $fileName, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploadCancelledState &&
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
  $FileUploadCancelledStateCopyWith<FileUploadCancelledState> get copyWith =>
      _$FileUploadCancelledStateCopyWithImpl<FileUploadCancelledState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) uploading,
    required TResult Function(String fileName, String fileId) uploaded,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) cancel,
    required TResult Function() cancelAll,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return cancel(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return cancel?.call(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(fileName, fileId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadingInitialState value) initial,
    required TResult Function(FileWaitingState value) waiting,
    required TResult Function(FileUploadingProgressState value) uploading,
    required TResult Function(FileUploadedState value) uploaded,
    required TResult Function(FileUploadFaultState value) fault,
    required TResult Function(FileUploadCancelledState value) cancel,
    required TResult Function(AllUploadsCancelledState value) cancelAll,
    required TResult Function(UploadsLimitExceededState value) limitExceeded,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class FileUploadCancelledState implements FileUploadingState {
  const factory FileUploadCancelledState(
      {required String fileName,
      required String fileId}) = _$FileUploadCancelledState;

  String get fileName;
  String get fileId;
  @JsonKey(ignore: true)
  $FileUploadCancelledStateCopyWith<FileUploadCancelledState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllUploadsCancelledStateCopyWith<$Res> {
  factory $AllUploadsCancelledStateCopyWith(AllUploadsCancelledState value,
          $Res Function(AllUploadsCancelledState) then) =
      _$AllUploadsCancelledStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AllUploadsCancelledStateCopyWithImpl<$Res>
    extends _$FileUploadingStateCopyWithImpl<$Res>
    implements $AllUploadsCancelledStateCopyWith<$Res> {
  _$AllUploadsCancelledStateCopyWithImpl(AllUploadsCancelledState _value,
      $Res Function(AllUploadsCancelledState) _then)
      : super(_value, (v) => _then(v as AllUploadsCancelledState));

  @override
  AllUploadsCancelledState get _value =>
      super._value as AllUploadsCancelledState;
}

/// @nodoc

class _$AllUploadsCancelledState implements AllUploadsCancelledState {
  const _$AllUploadsCancelledState();

  @override
  String toString() {
    return 'FileUploadingState.cancelAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AllUploadsCancelledState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) uploading,
    required TResult Function(String fileName, String fileId) uploaded,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) cancel,
    required TResult Function() cancelAll,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return cancelAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return cancelAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) {
    if (cancelAll != null) {
      return cancelAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploadingInitialState value) initial,
    required TResult Function(FileWaitingState value) waiting,
    required TResult Function(FileUploadingProgressState value) uploading,
    required TResult Function(FileUploadedState value) uploaded,
    required TResult Function(FileUploadFaultState value) fault,
    required TResult Function(FileUploadCancelledState value) cancel,
    required TResult Function(AllUploadsCancelledState value) cancelAll,
    required TResult Function(UploadsLimitExceededState value) limitExceeded,
  }) {
    return cancelAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
  }) {
    return cancelAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (cancelAll != null) {
      return cancelAll(this);
    }
    return orElse();
  }
}

abstract class AllUploadsCancelledState implements FileUploadingState {
  const factory AllUploadsCancelledState() = _$AllUploadsCancelledState;
}

/// @nodoc
abstract class $UploadsLimitExceededStateCopyWith<$Res> {
  factory $UploadsLimitExceededStateCopyWith(UploadsLimitExceededState value,
          $Res Function(UploadsLimitExceededState) then) =
      _$UploadsLimitExceededStateCopyWithImpl<$Res>;
  $Res call({String fileName, String fileId});
}

/// @nodoc
class _$UploadsLimitExceededStateCopyWithImpl<$Res>
    extends _$FileUploadingStateCopyWithImpl<$Res>
    implements $UploadsLimitExceededStateCopyWith<$Res> {
  _$UploadsLimitExceededStateCopyWithImpl(UploadsLimitExceededState _value,
      $Res Function(UploadsLimitExceededState) _then)
      : super(_value, (v) => _then(v as UploadsLimitExceededState));

  @override
  UploadsLimitExceededState get _value =>
      super._value as UploadsLimitExceededState;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
  }) {
    return _then(UploadsLimitExceededState(
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

class _$UploadsLimitExceededState implements UploadsLimitExceededState {
  const _$UploadsLimitExceededState(
      {required this.fileName, required this.fileId});

  @override
  final String fileName;
  @override
  final String fileId;

  @override
  String toString() {
    return 'FileUploadingState.limitExceeded(fileName: $fileName, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadsLimitExceededState &&
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
  $UploadsLimitExceededStateCopyWith<UploadsLimitExceededState> get copyWith =>
      _$UploadsLimitExceededStateCopyWithImpl<UploadsLimitExceededState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) uploading,
    required TResult Function(String fileName, String fileId) uploaded,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) cancel,
    required TResult Function() cancelAll,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return limitExceeded(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return limitExceeded?.call(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? uploading,
    TResult Function(String fileName, String fileId)? uploaded,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? cancel,
    TResult Function()? cancelAll,
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
    required TResult Function(FileUploadingInitialState value) initial,
    required TResult Function(FileWaitingState value) waiting,
    required TResult Function(FileUploadingProgressState value) uploading,
    required TResult Function(FileUploadedState value) uploaded,
    required TResult Function(FileUploadFaultState value) fault,
    required TResult Function(FileUploadCancelledState value) cancel,
    required TResult Function(AllUploadsCancelledState value) cancelAll,
    required TResult Function(UploadsLimitExceededState value) limitExceeded,
  }) {
    return limitExceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
  }) {
    return limitExceeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploadingInitialState value)? initial,
    TResult Function(FileWaitingState value)? waiting,
    TResult Function(FileUploadingProgressState value)? uploading,
    TResult Function(FileUploadedState value)? uploaded,
    TResult Function(FileUploadFaultState value)? fault,
    TResult Function(FileUploadCancelledState value)? cancel,
    TResult Function(AllUploadsCancelledState value)? cancelAll,
    TResult Function(UploadsLimitExceededState value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (limitExceeded != null) {
      return limitExceeded(this);
    }
    return orElse();
  }
}

abstract class UploadsLimitExceededState implements FileUploadingState {
  const factory UploadsLimitExceededState(
      {required String fileName,
      required String fileId}) = _$UploadsLimitExceededState;

  String get fileName;
  String get fileId;
  @JsonKey(ignore: true)
  $UploadsLimitExceededStateCopyWith<UploadsLimitExceededState> get copyWith =>
      throw _privateConstructorUsedError;
}
