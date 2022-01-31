// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'files_count_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilesCountStateTearOff {
  const _$FilesCountStateTearOff();

  NoFilesCountState noFiles() {
    return const NoFilesCountState();
  }

  LoadingInProgressFilesCountState inProgress(
      {required int totalFiles, required int remainingFiles}) {
    return LoadingInProgressFilesCountState(
      totalFiles: totalFiles,
      remainingFiles: remainingFiles,
    );
  }

  LoadingFinishedFilesCountState loadingFinished({required int totalFiles}) {
    return LoadingFinishedFilesCountState(
      totalFiles: totalFiles,
    );
  }
}

/// @nodoc
const $FilesCountState = _$FilesCountStateTearOff();

/// @nodoc
mixin _$FilesCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noFiles,
    required TResult Function(int totalFiles, int remainingFiles) inProgress,
    required TResult Function(int totalFiles) loadingFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noFiles,
    TResult Function(int totalFiles, int remainingFiles)? inProgress,
    TResult Function(int totalFiles)? loadingFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noFiles,
    TResult Function(int totalFiles, int remainingFiles)? inProgress,
    TResult Function(int totalFiles)? loadingFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoFilesCountState value) noFiles,
    required TResult Function(LoadingInProgressFilesCountState value)
        inProgress,
    required TResult Function(LoadingFinishedFilesCountState value)
        loadingFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoFilesCountState value)? noFiles,
    TResult Function(LoadingInProgressFilesCountState value)? inProgress,
    TResult Function(LoadingFinishedFilesCountState value)? loadingFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoFilesCountState value)? noFiles,
    TResult Function(LoadingInProgressFilesCountState value)? inProgress,
    TResult Function(LoadingFinishedFilesCountState value)? loadingFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesCountStateCopyWith<$Res> {
  factory $FilesCountStateCopyWith(
          FilesCountState value, $Res Function(FilesCountState) then) =
      _$FilesCountStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilesCountStateCopyWithImpl<$Res>
    implements $FilesCountStateCopyWith<$Res> {
  _$FilesCountStateCopyWithImpl(this._value, this._then);

  final FilesCountState _value;
  // ignore: unused_field
  final $Res Function(FilesCountState) _then;
}

/// @nodoc
abstract class $NoFilesCountStateCopyWith<$Res> {
  factory $NoFilesCountStateCopyWith(
          NoFilesCountState value, $Res Function(NoFilesCountState) then) =
      _$NoFilesCountStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoFilesCountStateCopyWithImpl<$Res>
    extends _$FilesCountStateCopyWithImpl<$Res>
    implements $NoFilesCountStateCopyWith<$Res> {
  _$NoFilesCountStateCopyWithImpl(
      NoFilesCountState _value, $Res Function(NoFilesCountState) _then)
      : super(_value, (v) => _then(v as NoFilesCountState));

  @override
  NoFilesCountState get _value => super._value as NoFilesCountState;
}

/// @nodoc

class _$NoFilesCountState implements NoFilesCountState {
  const _$NoFilesCountState();

  @override
  String toString() {
    return 'FilesCountState.noFiles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoFilesCountState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noFiles,
    required TResult Function(int totalFiles, int remainingFiles) inProgress,
    required TResult Function(int totalFiles) loadingFinished,
  }) {
    return noFiles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noFiles,
    TResult Function(int totalFiles, int remainingFiles)? inProgress,
    TResult Function(int totalFiles)? loadingFinished,
  }) {
    return noFiles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noFiles,
    TResult Function(int totalFiles, int remainingFiles)? inProgress,
    TResult Function(int totalFiles)? loadingFinished,
    required TResult orElse(),
  }) {
    if (noFiles != null) {
      return noFiles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoFilesCountState value) noFiles,
    required TResult Function(LoadingInProgressFilesCountState value)
        inProgress,
    required TResult Function(LoadingFinishedFilesCountState value)
        loadingFinished,
  }) {
    return noFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoFilesCountState value)? noFiles,
    TResult Function(LoadingInProgressFilesCountState value)? inProgress,
    TResult Function(LoadingFinishedFilesCountState value)? loadingFinished,
  }) {
    return noFiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoFilesCountState value)? noFiles,
    TResult Function(LoadingInProgressFilesCountState value)? inProgress,
    TResult Function(LoadingFinishedFilesCountState value)? loadingFinished,
    required TResult orElse(),
  }) {
    if (noFiles != null) {
      return noFiles(this);
    }
    return orElse();
  }
}

abstract class NoFilesCountState implements FilesCountState {
  const factory NoFilesCountState() = _$NoFilesCountState;
}

/// @nodoc
abstract class $LoadingInProgressFilesCountStateCopyWith<$Res> {
  factory $LoadingInProgressFilesCountStateCopyWith(
          LoadingInProgressFilesCountState value,
          $Res Function(LoadingInProgressFilesCountState) then) =
      _$LoadingInProgressFilesCountStateCopyWithImpl<$Res>;
  $Res call({int totalFiles, int remainingFiles});
}

/// @nodoc
class _$LoadingInProgressFilesCountStateCopyWithImpl<$Res>
    extends _$FilesCountStateCopyWithImpl<$Res>
    implements $LoadingInProgressFilesCountStateCopyWith<$Res> {
  _$LoadingInProgressFilesCountStateCopyWithImpl(
      LoadingInProgressFilesCountState _value,
      $Res Function(LoadingInProgressFilesCountState) _then)
      : super(_value, (v) => _then(v as LoadingInProgressFilesCountState));

  @override
  LoadingInProgressFilesCountState get _value =>
      super._value as LoadingInProgressFilesCountState;

  @override
  $Res call({
    Object? totalFiles = freezed,
    Object? remainingFiles = freezed,
  }) {
    return _then(LoadingInProgressFilesCountState(
      totalFiles: totalFiles == freezed
          ? _value.totalFiles
          : totalFiles // ignore: cast_nullable_to_non_nullable
              as int,
      remainingFiles: remainingFiles == freezed
          ? _value.remainingFiles
          : remainingFiles // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadingInProgressFilesCountState
    implements LoadingInProgressFilesCountState {
  const _$LoadingInProgressFilesCountState(
      {required this.totalFiles, required this.remainingFiles});

  @override
  final int totalFiles;
  @override
  final int remainingFiles;

  @override
  String toString() {
    return 'FilesCountState.inProgress(totalFiles: $totalFiles, remainingFiles: $remainingFiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingInProgressFilesCountState &&
            const DeepCollectionEquality()
                .equals(other.totalFiles, totalFiles) &&
            const DeepCollectionEquality()
                .equals(other.remainingFiles, remainingFiles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalFiles),
      const DeepCollectionEquality().hash(remainingFiles));

  @JsonKey(ignore: true)
  @override
  $LoadingInProgressFilesCountStateCopyWith<LoadingInProgressFilesCountState>
      get copyWith => _$LoadingInProgressFilesCountStateCopyWithImpl<
          LoadingInProgressFilesCountState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noFiles,
    required TResult Function(int totalFiles, int remainingFiles) inProgress,
    required TResult Function(int totalFiles) loadingFinished,
  }) {
    return inProgress(totalFiles, remainingFiles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noFiles,
    TResult Function(int totalFiles, int remainingFiles)? inProgress,
    TResult Function(int totalFiles)? loadingFinished,
  }) {
    return inProgress?.call(totalFiles, remainingFiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noFiles,
    TResult Function(int totalFiles, int remainingFiles)? inProgress,
    TResult Function(int totalFiles)? loadingFinished,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(totalFiles, remainingFiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoFilesCountState value) noFiles,
    required TResult Function(LoadingInProgressFilesCountState value)
        inProgress,
    required TResult Function(LoadingFinishedFilesCountState value)
        loadingFinished,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoFilesCountState value)? noFiles,
    TResult Function(LoadingInProgressFilesCountState value)? inProgress,
    TResult Function(LoadingFinishedFilesCountState value)? loadingFinished,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoFilesCountState value)? noFiles,
    TResult Function(LoadingInProgressFilesCountState value)? inProgress,
    TResult Function(LoadingFinishedFilesCountState value)? loadingFinished,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class LoadingInProgressFilesCountState implements FilesCountState {
  const factory LoadingInProgressFilesCountState(
      {required int totalFiles,
      required int remainingFiles}) = _$LoadingInProgressFilesCountState;

  int get totalFiles;
  int get remainingFiles;
  @JsonKey(ignore: true)
  $LoadingInProgressFilesCountStateCopyWith<LoadingInProgressFilesCountState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingFinishedFilesCountStateCopyWith<$Res> {
  factory $LoadingFinishedFilesCountStateCopyWith(
          LoadingFinishedFilesCountState value,
          $Res Function(LoadingFinishedFilesCountState) then) =
      _$LoadingFinishedFilesCountStateCopyWithImpl<$Res>;
  $Res call({int totalFiles});
}

/// @nodoc
class _$LoadingFinishedFilesCountStateCopyWithImpl<$Res>
    extends _$FilesCountStateCopyWithImpl<$Res>
    implements $LoadingFinishedFilesCountStateCopyWith<$Res> {
  _$LoadingFinishedFilesCountStateCopyWithImpl(
      LoadingFinishedFilesCountState _value,
      $Res Function(LoadingFinishedFilesCountState) _then)
      : super(_value, (v) => _then(v as LoadingFinishedFilesCountState));

  @override
  LoadingFinishedFilesCountState get _value =>
      super._value as LoadingFinishedFilesCountState;

  @override
  $Res call({
    Object? totalFiles = freezed,
  }) {
    return _then(LoadingFinishedFilesCountState(
      totalFiles: totalFiles == freezed
          ? _value.totalFiles
          : totalFiles // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadingFinishedFilesCountState
    implements LoadingFinishedFilesCountState {
  const _$LoadingFinishedFilesCountState({required this.totalFiles});

  @override
  final int totalFiles;

  @override
  String toString() {
    return 'FilesCountState.loadingFinished(totalFiles: $totalFiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingFinishedFilesCountState &&
            const DeepCollectionEquality()
                .equals(other.totalFiles, totalFiles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(totalFiles));

  @JsonKey(ignore: true)
  @override
  $LoadingFinishedFilesCountStateCopyWith<LoadingFinishedFilesCountState>
      get copyWith => _$LoadingFinishedFilesCountStateCopyWithImpl<
          LoadingFinishedFilesCountState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noFiles,
    required TResult Function(int totalFiles, int remainingFiles) inProgress,
    required TResult Function(int totalFiles) loadingFinished,
  }) {
    return loadingFinished(totalFiles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noFiles,
    TResult Function(int totalFiles, int remainingFiles)? inProgress,
    TResult Function(int totalFiles)? loadingFinished,
  }) {
    return loadingFinished?.call(totalFiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noFiles,
    TResult Function(int totalFiles, int remainingFiles)? inProgress,
    TResult Function(int totalFiles)? loadingFinished,
    required TResult orElse(),
  }) {
    if (loadingFinished != null) {
      return loadingFinished(totalFiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoFilesCountState value) noFiles,
    required TResult Function(LoadingInProgressFilesCountState value)
        inProgress,
    required TResult Function(LoadingFinishedFilesCountState value)
        loadingFinished,
  }) {
    return loadingFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoFilesCountState value)? noFiles,
    TResult Function(LoadingInProgressFilesCountState value)? inProgress,
    TResult Function(LoadingFinishedFilesCountState value)? loadingFinished,
  }) {
    return loadingFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoFilesCountState value)? noFiles,
    TResult Function(LoadingInProgressFilesCountState value)? inProgress,
    TResult Function(LoadingFinishedFilesCountState value)? loadingFinished,
    required TResult orElse(),
  }) {
    if (loadingFinished != null) {
      return loadingFinished(this);
    }
    return orElse();
  }
}

abstract class LoadingFinishedFilesCountState implements FilesCountState {
  const factory LoadingFinishedFilesCountState({required int totalFiles}) =
      _$LoadingFinishedFilesCountState;

  int get totalFiles;
  @JsonKey(ignore: true)
  $LoadingFinishedFilesCountStateCopyWith<LoadingFinishedFilesCountState>
      get copyWith => throw _privateConstructorUsedError;
}
