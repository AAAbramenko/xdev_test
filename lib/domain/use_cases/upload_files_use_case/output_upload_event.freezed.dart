// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'output_upload_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OutputUploadEventTearOff {
  const _$OutputUploadEventTearOff();

  WaitingUploadEvent waiting(
      {required String fileName, required String fileId}) {
    return WaitingUploadEvent(
      fileName: fileName,
      fileId: fileId,
    );
  }

  StartUploadEvent start({required String fileName, required String fileId}) {
    return StartUploadEvent(
      fileName: fileName,
      fileId: fileId,
    );
  }

  FinishedUploadEvent finished(
      {required String fileName, required String fileId}) {
    return FinishedUploadEvent(
      fileName: fileName,
      fileId: fileId,
    );
  }

  CancelFileUploadEvent cancelFile(
      {required String fileName, required String fileId}) {
    return CancelFileUploadEvent(
      fileName: fileName,
      fileId: fileId,
    );
  }

  CancelAllUploadEvent cancelAll() {
    return const CancelAllUploadEvent();
  }

  FaultUploadEvent fault(
      {required String fileName,
      required String fileId,
      required String description}) {
    return FaultUploadEvent(
      fileName: fileName,
      fileId: fileId,
      description: description,
    );
  }

  UploadLimitExceededEvent limitExceeded(
      {required String fileName, required String fileId}) {
    return UploadLimitExceededEvent(
      fileName: fileName,
      fileId: fileId,
    );
  }
}

/// @nodoc
const $OutputUploadEvent = _$OutputUploadEventTearOff();

/// @nodoc
mixin _$OutputUploadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) start,
    required TResult Function(String fileName, String fileId) finished,
    required TResult Function(String fileName, String fileId) cancelFile,
    required TResult Function() cancelAll,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WaitingUploadEvent value) waiting,
    required TResult Function(StartUploadEvent value) start,
    required TResult Function(FinishedUploadEvent value) finished,
    required TResult Function(CancelFileUploadEvent value) cancelFile,
    required TResult Function(CancelAllUploadEvent value) cancelAll,
    required TResult Function(FaultUploadEvent value) fault,
    required TResult Function(UploadLimitExceededEvent value) limitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutputUploadEventCopyWith<$Res> {
  factory $OutputUploadEventCopyWith(
          OutputUploadEvent value, $Res Function(OutputUploadEvent) then) =
      _$OutputUploadEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OutputUploadEventCopyWithImpl<$Res>
    implements $OutputUploadEventCopyWith<$Res> {
  _$OutputUploadEventCopyWithImpl(this._value, this._then);

  final OutputUploadEvent _value;
  // ignore: unused_field
  final $Res Function(OutputUploadEvent) _then;
}

/// @nodoc
abstract class $WaitingUploadEventCopyWith<$Res> {
  factory $WaitingUploadEventCopyWith(
          WaitingUploadEvent value, $Res Function(WaitingUploadEvent) then) =
      _$WaitingUploadEventCopyWithImpl<$Res>;
  $Res call({String fileName, String fileId});
}

/// @nodoc
class _$WaitingUploadEventCopyWithImpl<$Res>
    extends _$OutputUploadEventCopyWithImpl<$Res>
    implements $WaitingUploadEventCopyWith<$Res> {
  _$WaitingUploadEventCopyWithImpl(
      WaitingUploadEvent _value, $Res Function(WaitingUploadEvent) _then)
      : super(_value, (v) => _then(v as WaitingUploadEvent));

  @override
  WaitingUploadEvent get _value => super._value as WaitingUploadEvent;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
  }) {
    return _then(WaitingUploadEvent(
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

class _$WaitingUploadEvent implements WaitingUploadEvent {
  const _$WaitingUploadEvent({required this.fileName, required this.fileId});

  @override
  final String fileName;
  @override
  final String fileId;

  @override
  String toString() {
    return 'OutputUploadEvent.waiting(fileName: $fileName, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WaitingUploadEvent &&
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
  $WaitingUploadEventCopyWith<WaitingUploadEvent> get copyWith =>
      _$WaitingUploadEventCopyWithImpl<WaitingUploadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) start,
    required TResult Function(String fileName, String fileId) finished,
    required TResult Function(String fileName, String fileId) cancelFile,
    required TResult Function() cancelAll,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return waiting(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return waiting?.call(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
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
    required TResult Function(WaitingUploadEvent value) waiting,
    required TResult Function(StartUploadEvent value) start,
    required TResult Function(FinishedUploadEvent value) finished,
    required TResult Function(CancelFileUploadEvent value) cancelFile,
    required TResult Function(CancelAllUploadEvent value) cancelAll,
    required TResult Function(FaultUploadEvent value) fault,
    required TResult Function(UploadLimitExceededEvent value) limitExceeded,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class WaitingUploadEvent implements OutputUploadEvent {
  const factory WaitingUploadEvent(
      {required String fileName,
      required String fileId}) = _$WaitingUploadEvent;

  String get fileName;
  String get fileId;
  @JsonKey(ignore: true)
  $WaitingUploadEventCopyWith<WaitingUploadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartUploadEventCopyWith<$Res> {
  factory $StartUploadEventCopyWith(
          StartUploadEvent value, $Res Function(StartUploadEvent) then) =
      _$StartUploadEventCopyWithImpl<$Res>;
  $Res call({String fileName, String fileId});
}

/// @nodoc
class _$StartUploadEventCopyWithImpl<$Res>
    extends _$OutputUploadEventCopyWithImpl<$Res>
    implements $StartUploadEventCopyWith<$Res> {
  _$StartUploadEventCopyWithImpl(
      StartUploadEvent _value, $Res Function(StartUploadEvent) _then)
      : super(_value, (v) => _then(v as StartUploadEvent));

  @override
  StartUploadEvent get _value => super._value as StartUploadEvent;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
  }) {
    return _then(StartUploadEvent(
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

class _$StartUploadEvent implements StartUploadEvent {
  const _$StartUploadEvent({required this.fileName, required this.fileId});

  @override
  final String fileName;
  @override
  final String fileId;

  @override
  String toString() {
    return 'OutputUploadEvent.start(fileName: $fileName, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StartUploadEvent &&
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
  $StartUploadEventCopyWith<StartUploadEvent> get copyWith =>
      _$StartUploadEventCopyWithImpl<StartUploadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) start,
    required TResult Function(String fileName, String fileId) finished,
    required TResult Function(String fileName, String fileId) cancelFile,
    required TResult Function() cancelAll,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return start(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return start?.call(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(fileName, fileId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WaitingUploadEvent value) waiting,
    required TResult Function(StartUploadEvent value) start,
    required TResult Function(FinishedUploadEvent value) finished,
    required TResult Function(CancelFileUploadEvent value) cancelFile,
    required TResult Function(CancelAllUploadEvent value) cancelAll,
    required TResult Function(FaultUploadEvent value) fault,
    required TResult Function(UploadLimitExceededEvent value) limitExceeded,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class StartUploadEvent implements OutputUploadEvent {
  const factory StartUploadEvent(
      {required String fileName, required String fileId}) = _$StartUploadEvent;

  String get fileName;
  String get fileId;
  @JsonKey(ignore: true)
  $StartUploadEventCopyWith<StartUploadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishedUploadEventCopyWith<$Res> {
  factory $FinishedUploadEventCopyWith(
          FinishedUploadEvent value, $Res Function(FinishedUploadEvent) then) =
      _$FinishedUploadEventCopyWithImpl<$Res>;
  $Res call({String fileName, String fileId});
}

/// @nodoc
class _$FinishedUploadEventCopyWithImpl<$Res>
    extends _$OutputUploadEventCopyWithImpl<$Res>
    implements $FinishedUploadEventCopyWith<$Res> {
  _$FinishedUploadEventCopyWithImpl(
      FinishedUploadEvent _value, $Res Function(FinishedUploadEvent) _then)
      : super(_value, (v) => _then(v as FinishedUploadEvent));

  @override
  FinishedUploadEvent get _value => super._value as FinishedUploadEvent;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
  }) {
    return _then(FinishedUploadEvent(
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

class _$FinishedUploadEvent implements FinishedUploadEvent {
  const _$FinishedUploadEvent({required this.fileName, required this.fileId});

  @override
  final String fileName;
  @override
  final String fileId;

  @override
  String toString() {
    return 'OutputUploadEvent.finished(fileName: $fileName, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FinishedUploadEvent &&
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
  $FinishedUploadEventCopyWith<FinishedUploadEvent> get copyWith =>
      _$FinishedUploadEventCopyWithImpl<FinishedUploadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) start,
    required TResult Function(String fileName, String fileId) finished,
    required TResult Function(String fileName, String fileId) cancelFile,
    required TResult Function() cancelAll,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return finished(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return finished?.call(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(fileName, fileId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WaitingUploadEvent value) waiting,
    required TResult Function(StartUploadEvent value) start,
    required TResult Function(FinishedUploadEvent value) finished,
    required TResult Function(CancelFileUploadEvent value) cancelFile,
    required TResult Function(CancelAllUploadEvent value) cancelAll,
    required TResult Function(FaultUploadEvent value) fault,
    required TResult Function(UploadLimitExceededEvent value) limitExceeded,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class FinishedUploadEvent implements OutputUploadEvent {
  const factory FinishedUploadEvent(
      {required String fileName,
      required String fileId}) = _$FinishedUploadEvent;

  String get fileName;
  String get fileId;
  @JsonKey(ignore: true)
  $FinishedUploadEventCopyWith<FinishedUploadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelFileUploadEventCopyWith<$Res> {
  factory $CancelFileUploadEventCopyWith(CancelFileUploadEvent value,
          $Res Function(CancelFileUploadEvent) then) =
      _$CancelFileUploadEventCopyWithImpl<$Res>;
  $Res call({String fileName, String fileId});
}

/// @nodoc
class _$CancelFileUploadEventCopyWithImpl<$Res>
    extends _$OutputUploadEventCopyWithImpl<$Res>
    implements $CancelFileUploadEventCopyWith<$Res> {
  _$CancelFileUploadEventCopyWithImpl(
      CancelFileUploadEvent _value, $Res Function(CancelFileUploadEvent) _then)
      : super(_value, (v) => _then(v as CancelFileUploadEvent));

  @override
  CancelFileUploadEvent get _value => super._value as CancelFileUploadEvent;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
  }) {
    return _then(CancelFileUploadEvent(
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

class _$CancelFileUploadEvent implements CancelFileUploadEvent {
  const _$CancelFileUploadEvent({required this.fileName, required this.fileId});

  @override
  final String fileName;
  @override
  final String fileId;

  @override
  String toString() {
    return 'OutputUploadEvent.cancelFile(fileName: $fileName, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CancelFileUploadEvent &&
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
  $CancelFileUploadEventCopyWith<CancelFileUploadEvent> get copyWith =>
      _$CancelFileUploadEventCopyWithImpl<CancelFileUploadEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) start,
    required TResult Function(String fileName, String fileId) finished,
    required TResult Function(String fileName, String fileId) cancelFile,
    required TResult Function() cancelAll,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return cancelFile(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return cancelFile?.call(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
    required TResult orElse(),
  }) {
    if (cancelFile != null) {
      return cancelFile(fileName, fileId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WaitingUploadEvent value) waiting,
    required TResult Function(StartUploadEvent value) start,
    required TResult Function(FinishedUploadEvent value) finished,
    required TResult Function(CancelFileUploadEvent value) cancelFile,
    required TResult Function(CancelAllUploadEvent value) cancelAll,
    required TResult Function(FaultUploadEvent value) fault,
    required TResult Function(UploadLimitExceededEvent value) limitExceeded,
  }) {
    return cancelFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
  }) {
    return cancelFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (cancelFile != null) {
      return cancelFile(this);
    }
    return orElse();
  }
}

abstract class CancelFileUploadEvent implements OutputUploadEvent {
  const factory CancelFileUploadEvent(
      {required String fileName,
      required String fileId}) = _$CancelFileUploadEvent;

  String get fileName;
  String get fileId;
  @JsonKey(ignore: true)
  $CancelFileUploadEventCopyWith<CancelFileUploadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelAllUploadEventCopyWith<$Res> {
  factory $CancelAllUploadEventCopyWith(CancelAllUploadEvent value,
          $Res Function(CancelAllUploadEvent) then) =
      _$CancelAllUploadEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelAllUploadEventCopyWithImpl<$Res>
    extends _$OutputUploadEventCopyWithImpl<$Res>
    implements $CancelAllUploadEventCopyWith<$Res> {
  _$CancelAllUploadEventCopyWithImpl(
      CancelAllUploadEvent _value, $Res Function(CancelAllUploadEvent) _then)
      : super(_value, (v) => _then(v as CancelAllUploadEvent));

  @override
  CancelAllUploadEvent get _value => super._value as CancelAllUploadEvent;
}

/// @nodoc

class _$CancelAllUploadEvent implements CancelAllUploadEvent {
  const _$CancelAllUploadEvent();

  @override
  String toString() {
    return 'OutputUploadEvent.cancelAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CancelAllUploadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) start,
    required TResult Function(String fileName, String fileId) finished,
    required TResult Function(String fileName, String fileId) cancelFile,
    required TResult Function() cancelAll,
    required TResult Function(
            String fileName, String fileId, String description)
        fault,
    required TResult Function(String fileName, String fileId) limitExceeded,
  }) {
    return cancelAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return cancelAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
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
    required TResult Function(WaitingUploadEvent value) waiting,
    required TResult Function(StartUploadEvent value) start,
    required TResult Function(FinishedUploadEvent value) finished,
    required TResult Function(CancelFileUploadEvent value) cancelFile,
    required TResult Function(CancelAllUploadEvent value) cancelAll,
    required TResult Function(FaultUploadEvent value) fault,
    required TResult Function(UploadLimitExceededEvent value) limitExceeded,
  }) {
    return cancelAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
  }) {
    return cancelAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (cancelAll != null) {
      return cancelAll(this);
    }
    return orElse();
  }
}

abstract class CancelAllUploadEvent implements OutputUploadEvent {
  const factory CancelAllUploadEvent() = _$CancelAllUploadEvent;
}

/// @nodoc
abstract class $FaultUploadEventCopyWith<$Res> {
  factory $FaultUploadEventCopyWith(
          FaultUploadEvent value, $Res Function(FaultUploadEvent) then) =
      _$FaultUploadEventCopyWithImpl<$Res>;
  $Res call({String fileName, String fileId, String description});
}

/// @nodoc
class _$FaultUploadEventCopyWithImpl<$Res>
    extends _$OutputUploadEventCopyWithImpl<$Res>
    implements $FaultUploadEventCopyWith<$Res> {
  _$FaultUploadEventCopyWithImpl(
      FaultUploadEvent _value, $Res Function(FaultUploadEvent) _then)
      : super(_value, (v) => _then(v as FaultUploadEvent));

  @override
  FaultUploadEvent get _value => super._value as FaultUploadEvent;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
    Object? description = freezed,
  }) {
    return _then(FaultUploadEvent(
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

class _$FaultUploadEvent implements FaultUploadEvent {
  const _$FaultUploadEvent(
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
    return 'OutputUploadEvent.fault(fileName: $fileName, fileId: $fileId, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FaultUploadEvent &&
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
  $FaultUploadEventCopyWith<FaultUploadEvent> get copyWith =>
      _$FaultUploadEventCopyWithImpl<FaultUploadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) start,
    required TResult Function(String fileName, String fileId) finished,
    required TResult Function(String fileName, String fileId) cancelFile,
    required TResult Function() cancelAll,
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
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return fault?.call(fileName, fileId, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
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
    required TResult Function(WaitingUploadEvent value) waiting,
    required TResult Function(StartUploadEvent value) start,
    required TResult Function(FinishedUploadEvent value) finished,
    required TResult Function(CancelFileUploadEvent value) cancelFile,
    required TResult Function(CancelAllUploadEvent value) cancelAll,
    required TResult Function(FaultUploadEvent value) fault,
    required TResult Function(UploadLimitExceededEvent value) limitExceeded,
  }) {
    return fault(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
  }) {
    return fault?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (fault != null) {
      return fault(this);
    }
    return orElse();
  }
}

abstract class FaultUploadEvent implements OutputUploadEvent {
  const factory FaultUploadEvent(
      {required String fileName,
      required String fileId,
      required String description}) = _$FaultUploadEvent;

  String get fileName;
  String get fileId;
  String get description;
  @JsonKey(ignore: true)
  $FaultUploadEventCopyWith<FaultUploadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadLimitExceededEventCopyWith<$Res> {
  factory $UploadLimitExceededEventCopyWith(UploadLimitExceededEvent value,
          $Res Function(UploadLimitExceededEvent) then) =
      _$UploadLimitExceededEventCopyWithImpl<$Res>;
  $Res call({String fileName, String fileId});
}

/// @nodoc
class _$UploadLimitExceededEventCopyWithImpl<$Res>
    extends _$OutputUploadEventCopyWithImpl<$Res>
    implements $UploadLimitExceededEventCopyWith<$Res> {
  _$UploadLimitExceededEventCopyWithImpl(UploadLimitExceededEvent _value,
      $Res Function(UploadLimitExceededEvent) _then)
      : super(_value, (v) => _then(v as UploadLimitExceededEvent));

  @override
  UploadLimitExceededEvent get _value =>
      super._value as UploadLimitExceededEvent;

  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileId = freezed,
  }) {
    return _then(UploadLimitExceededEvent(
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

class _$UploadLimitExceededEvent implements UploadLimitExceededEvent {
  const _$UploadLimitExceededEvent(
      {required this.fileName, required this.fileId});

  @override
  final String fileName;
  @override
  final String fileId;

  @override
  String toString() {
    return 'OutputUploadEvent.limitExceeded(fileName: $fileName, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadLimitExceededEvent &&
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
  $UploadLimitExceededEventCopyWith<UploadLimitExceededEvent> get copyWith =>
      _$UploadLimitExceededEventCopyWithImpl<UploadLimitExceededEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName, String fileId) waiting,
    required TResult Function(String fileName, String fileId) start,
    required TResult Function(String fileName, String fileId) finished,
    required TResult Function(String fileName, String fileId) cancelFile,
    required TResult Function() cancelAll,
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
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
    TResult Function(String fileName, String fileId, String description)? fault,
    TResult Function(String fileName, String fileId)? limitExceeded,
  }) {
    return limitExceeded?.call(fileName, fileId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName, String fileId)? waiting,
    TResult Function(String fileName, String fileId)? start,
    TResult Function(String fileName, String fileId)? finished,
    TResult Function(String fileName, String fileId)? cancelFile,
    TResult Function()? cancelAll,
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
    required TResult Function(WaitingUploadEvent value) waiting,
    required TResult Function(StartUploadEvent value) start,
    required TResult Function(FinishedUploadEvent value) finished,
    required TResult Function(CancelFileUploadEvent value) cancelFile,
    required TResult Function(CancelAllUploadEvent value) cancelAll,
    required TResult Function(FaultUploadEvent value) fault,
    required TResult Function(UploadLimitExceededEvent value) limitExceeded,
  }) {
    return limitExceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
  }) {
    return limitExceeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WaitingUploadEvent value)? waiting,
    TResult Function(StartUploadEvent value)? start,
    TResult Function(FinishedUploadEvent value)? finished,
    TResult Function(CancelFileUploadEvent value)? cancelFile,
    TResult Function(CancelAllUploadEvent value)? cancelAll,
    TResult Function(FaultUploadEvent value)? fault,
    TResult Function(UploadLimitExceededEvent value)? limitExceeded,
    required TResult orElse(),
  }) {
    if (limitExceeded != null) {
      return limitExceeded(this);
    }
    return orElse();
  }
}

abstract class UploadLimitExceededEvent implements OutputUploadEvent {
  const factory UploadLimitExceededEvent(
      {required String fileName,
      required String fileId}) = _$UploadLimitExceededEvent;

  String get fileName;
  String get fileId;
  @JsonKey(ignore: true)
  $UploadLimitExceededEventCopyWith<UploadLimitExceededEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
