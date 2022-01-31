// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_files_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SaveFilesStateTearOff {
  const _$SaveFilesStateTearOff();

  SavedFilesState notSaved() {
    return const SavedFilesState();
  }

  NotSavedFilesState saved() {
    return const NotSavedFilesState();
  }

  SavingFilesState saving() {
    return const SavingFilesState();
  }
}

/// @nodoc
const $SaveFilesState = _$SaveFilesStateTearOff();

/// @nodoc
mixin _$SaveFilesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSaved,
    required TResult Function() saved,
    required TResult Function() saving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notSaved,
    TResult Function()? saved,
    TResult Function()? saving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSaved,
    TResult Function()? saved,
    TResult Function()? saving,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavedFilesState value) notSaved,
    required TResult Function(NotSavedFilesState value) saved,
    required TResult Function(SavingFilesState value) saving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SavedFilesState value)? notSaved,
    TResult Function(NotSavedFilesState value)? saved,
    TResult Function(SavingFilesState value)? saving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavedFilesState value)? notSaved,
    TResult Function(NotSavedFilesState value)? saved,
    TResult Function(SavingFilesState value)? saving,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveFilesStateCopyWith<$Res> {
  factory $SaveFilesStateCopyWith(
          SaveFilesState value, $Res Function(SaveFilesState) then) =
      _$SaveFilesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveFilesStateCopyWithImpl<$Res>
    implements $SaveFilesStateCopyWith<$Res> {
  _$SaveFilesStateCopyWithImpl(this._value, this._then);

  final SaveFilesState _value;
  // ignore: unused_field
  final $Res Function(SaveFilesState) _then;
}

/// @nodoc
abstract class $SavedFilesStateCopyWith<$Res> {
  factory $SavedFilesStateCopyWith(
          SavedFilesState value, $Res Function(SavedFilesState) then) =
      _$SavedFilesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavedFilesStateCopyWithImpl<$Res>
    extends _$SaveFilesStateCopyWithImpl<$Res>
    implements $SavedFilesStateCopyWith<$Res> {
  _$SavedFilesStateCopyWithImpl(
      SavedFilesState _value, $Res Function(SavedFilesState) _then)
      : super(_value, (v) => _then(v as SavedFilesState));

  @override
  SavedFilesState get _value => super._value as SavedFilesState;
}

/// @nodoc

class _$SavedFilesState implements SavedFilesState {
  const _$SavedFilesState();

  @override
  String toString() {
    return 'SaveFilesState.notSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SavedFilesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSaved,
    required TResult Function() saved,
    required TResult Function() saving,
  }) {
    return notSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notSaved,
    TResult Function()? saved,
    TResult Function()? saving,
  }) {
    return notSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSaved,
    TResult Function()? saved,
    TResult Function()? saving,
    required TResult orElse(),
  }) {
    if (notSaved != null) {
      return notSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavedFilesState value) notSaved,
    required TResult Function(NotSavedFilesState value) saved,
    required TResult Function(SavingFilesState value) saving,
  }) {
    return notSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SavedFilesState value)? notSaved,
    TResult Function(NotSavedFilesState value)? saved,
    TResult Function(SavingFilesState value)? saving,
  }) {
    return notSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavedFilesState value)? notSaved,
    TResult Function(NotSavedFilesState value)? saved,
    TResult Function(SavingFilesState value)? saving,
    required TResult orElse(),
  }) {
    if (notSaved != null) {
      return notSaved(this);
    }
    return orElse();
  }
}

abstract class SavedFilesState implements SaveFilesState {
  const factory SavedFilesState() = _$SavedFilesState;
}

/// @nodoc
abstract class $NotSavedFilesStateCopyWith<$Res> {
  factory $NotSavedFilesStateCopyWith(
          NotSavedFilesState value, $Res Function(NotSavedFilesState) then) =
      _$NotSavedFilesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotSavedFilesStateCopyWithImpl<$Res>
    extends _$SaveFilesStateCopyWithImpl<$Res>
    implements $NotSavedFilesStateCopyWith<$Res> {
  _$NotSavedFilesStateCopyWithImpl(
      NotSavedFilesState _value, $Res Function(NotSavedFilesState) _then)
      : super(_value, (v) => _then(v as NotSavedFilesState));

  @override
  NotSavedFilesState get _value => super._value as NotSavedFilesState;
}

/// @nodoc

class _$NotSavedFilesState implements NotSavedFilesState {
  const _$NotSavedFilesState();

  @override
  String toString() {
    return 'SaveFilesState.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotSavedFilesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSaved,
    required TResult Function() saved,
    required TResult Function() saving,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notSaved,
    TResult Function()? saved,
    TResult Function()? saving,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSaved,
    TResult Function()? saved,
    TResult Function()? saving,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavedFilesState value) notSaved,
    required TResult Function(NotSavedFilesState value) saved,
    required TResult Function(SavingFilesState value) saving,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SavedFilesState value)? notSaved,
    TResult Function(NotSavedFilesState value)? saved,
    TResult Function(SavingFilesState value)? saving,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavedFilesState value)? notSaved,
    TResult Function(NotSavedFilesState value)? saved,
    TResult Function(SavingFilesState value)? saving,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class NotSavedFilesState implements SaveFilesState {
  const factory NotSavedFilesState() = _$NotSavedFilesState;
}

/// @nodoc
abstract class $SavingFilesStateCopyWith<$Res> {
  factory $SavingFilesStateCopyWith(
          SavingFilesState value, $Res Function(SavingFilesState) then) =
      _$SavingFilesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavingFilesStateCopyWithImpl<$Res>
    extends _$SaveFilesStateCopyWithImpl<$Res>
    implements $SavingFilesStateCopyWith<$Res> {
  _$SavingFilesStateCopyWithImpl(
      SavingFilesState _value, $Res Function(SavingFilesState) _then)
      : super(_value, (v) => _then(v as SavingFilesState));

  @override
  SavingFilesState get _value => super._value as SavingFilesState;
}

/// @nodoc

class _$SavingFilesState implements SavingFilesState {
  const _$SavingFilesState();

  @override
  String toString() {
    return 'SaveFilesState.saving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SavingFilesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSaved,
    required TResult Function() saved,
    required TResult Function() saving,
  }) {
    return saving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notSaved,
    TResult Function()? saved,
    TResult Function()? saving,
  }) {
    return saving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSaved,
    TResult Function()? saved,
    TResult Function()? saving,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavedFilesState value) notSaved,
    required TResult Function(NotSavedFilesState value) saved,
    required TResult Function(SavingFilesState value) saving,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SavedFilesState value)? notSaved,
    TResult Function(NotSavedFilesState value)? saved,
    TResult Function(SavingFilesState value)? saving,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavedFilesState value)? notSaved,
    TResult Function(NotSavedFilesState value)? saved,
    TResult Function(SavingFilesState value)? saving,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class SavingFilesState implements SaveFilesState {
  const factory SavingFilesState() = _$SavingFilesState;
}
