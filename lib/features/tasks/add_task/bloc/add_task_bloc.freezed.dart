// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() creating,
    required TResult Function(Todo todo) editing,
    required TResult Function() completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? creating,
    TResult? Function(Todo todo)? editing,
    TResult? Function()? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? creating,
    TResult Function(Todo todo)? editing,
    TResult Function()? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_CreatingState value) creating,
    required TResult Function(_EditingState value) editing,
    required TResult Function(_CompletedState value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_CreatingState value)? creating,
    TResult? Function(_EditingState value)? editing,
    TResult? Function(_CompletedState value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_CreatingState value)? creating,
    TResult Function(_EditingState value)? editing,
    TResult Function(_CompletedState value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskStateCopyWith<$Res> {
  factory $AddTaskStateCopyWith(
          AddTaskState value, $Res Function(AddTaskState) then) =
      _$AddTaskStateCopyWithImpl<$Res, AddTaskState>;
}

/// @nodoc
class _$AddTaskStateCopyWithImpl<$Res, $Val extends AddTaskState>
    implements $AddTaskStateCopyWith<$Res> {
  _$AddTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$AddTaskStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  _$LoadingStateImpl();

  @override
  String toString() {
    return 'AddTaskState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() creating,
    required TResult Function(Todo todo) editing,
    required TResult Function() completed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? creating,
    TResult? Function(Todo todo)? editing,
    TResult? Function()? completed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? creating,
    TResult Function(Todo todo)? editing,
    TResult Function()? completed,
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
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_CreatingState value) creating,
    required TResult Function(_EditingState value) editing,
    required TResult Function(_CompletedState value) completed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_CreatingState value)? creating,
    TResult? Function(_EditingState value)? editing,
    TResult? Function(_CompletedState value)? completed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_CreatingState value)? creating,
    TResult Function(_EditingState value)? editing,
    TResult Function(_CompletedState value)? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AddTaskState {
  factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$CreatingStateImplCopyWith<$Res> {
  factory _$$CreatingStateImplCopyWith(
          _$CreatingStateImpl value, $Res Function(_$CreatingStateImpl) then) =
      __$$CreatingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatingStateImplCopyWithImpl<$Res>
    extends _$AddTaskStateCopyWithImpl<$Res, _$CreatingStateImpl>
    implements _$$CreatingStateImplCopyWith<$Res> {
  __$$CreatingStateImplCopyWithImpl(
      _$CreatingStateImpl _value, $Res Function(_$CreatingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreatingStateImpl implements _CreatingState {
  _$CreatingStateImpl();

  @override
  String toString() {
    return 'AddTaskState.creating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() creating,
    required TResult Function(Todo todo) editing,
    required TResult Function() completed,
  }) {
    return creating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? creating,
    TResult? Function(Todo todo)? editing,
    TResult? Function()? completed,
  }) {
    return creating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? creating,
    TResult Function(Todo todo)? editing,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_CreatingState value) creating,
    required TResult Function(_EditingState value) editing,
    required TResult Function(_CompletedState value) completed,
  }) {
    return creating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_CreatingState value)? creating,
    TResult? Function(_EditingState value)? editing,
    TResult? Function(_CompletedState value)? completed,
  }) {
    return creating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_CreatingState value)? creating,
    TResult Function(_EditingState value)? editing,
    TResult Function(_CompletedState value)? completed,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating(this);
    }
    return orElse();
  }
}

abstract class _CreatingState implements AddTaskState {
  factory _CreatingState() = _$CreatingStateImpl;
}

/// @nodoc
abstract class _$$EditingStateImplCopyWith<$Res> {
  factory _$$EditingStateImplCopyWith(
          _$EditingStateImpl value, $Res Function(_$EditingStateImpl) then) =
      __$$EditingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});
}

/// @nodoc
class __$$EditingStateImplCopyWithImpl<$Res>
    extends _$AddTaskStateCopyWithImpl<$Res, _$EditingStateImpl>
    implements _$$EditingStateImplCopyWith<$Res> {
  __$$EditingStateImplCopyWithImpl(
      _$EditingStateImpl _value, $Res Function(_$EditingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$EditingStateImpl(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$EditingStateImpl implements _EditingState {
  _$EditingStateImpl(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'AddTaskState.editing(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditingStateImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditingStateImplCopyWith<_$EditingStateImpl> get copyWith =>
      __$$EditingStateImplCopyWithImpl<_$EditingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() creating,
    required TResult Function(Todo todo) editing,
    required TResult Function() completed,
  }) {
    return editing(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? creating,
    TResult? Function(Todo todo)? editing,
    TResult? Function()? completed,
  }) {
    return editing?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? creating,
    TResult Function(Todo todo)? editing,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_CreatingState value) creating,
    required TResult Function(_EditingState value) editing,
    required TResult Function(_CompletedState value) completed,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_CreatingState value)? creating,
    TResult? Function(_EditingState value)? editing,
    TResult? Function(_CompletedState value)? completed,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_CreatingState value)? creating,
    TResult Function(_EditingState value)? editing,
    TResult Function(_CompletedState value)? completed,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class _EditingState implements AddTaskState {
  factory _EditingState(final Todo todo) = _$EditingStateImpl;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$EditingStateImplCopyWith<_$EditingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletedStateImplCopyWith<$Res> {
  factory _$$CompletedStateImplCopyWith(_$CompletedStateImpl value,
          $Res Function(_$CompletedStateImpl) then) =
      __$$CompletedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedStateImplCopyWithImpl<$Res>
    extends _$AddTaskStateCopyWithImpl<$Res, _$CompletedStateImpl>
    implements _$$CompletedStateImplCopyWith<$Res> {
  __$$CompletedStateImplCopyWithImpl(
      _$CompletedStateImpl _value, $Res Function(_$CompletedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompletedStateImpl implements _CompletedState {
  _$CompletedStateImpl();

  @override
  String toString() {
    return 'AddTaskState.completed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompletedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() creating,
    required TResult Function(Todo todo) editing,
    required TResult Function() completed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? creating,
    TResult? Function(Todo todo)? editing,
    TResult? Function()? completed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? creating,
    TResult Function(Todo todo)? editing,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_CreatingState value) creating,
    required TResult Function(_EditingState value) editing,
    required TResult Function(_CompletedState value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_CreatingState value)? creating,
    TResult? Function(_EditingState value)? editing,
    TResult? Function(_CompletedState value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_CreatingState value)? creating,
    TResult Function(_EditingState value)? editing,
    TResult Function(_CompletedState value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _CompletedState implements AddTaskState {
  factory _CompletedState() = _$CompletedStateImpl;
}

/// @nodoc
mixin _$AddTaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(DateTime dateTime) setDateTime,
    required TResult Function(String title, String description) saveTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function(DateTime dateTime)? setDateTime,
    TResult? Function(String title, String description)? saveTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(DateTime dateTime)? setDateTime,
    TResult Function(String title, String description)? saveTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDataEvent value) loadData,
    required TResult Function(_SetDateTimeEvent value) setDateTime,
    required TResult Function(_SaveTodoEvent value) saveTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDataEvent value)? loadData,
    TResult? Function(_SetDateTimeEvent value)? setDateTime,
    TResult? Function(_SaveTodoEvent value)? saveTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_SetDateTimeEvent value)? setDateTime,
    TResult Function(_SaveTodoEvent value)? saveTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskEventCopyWith<$Res> {
  factory $AddTaskEventCopyWith(
          AddTaskEvent value, $Res Function(AddTaskEvent) then) =
      _$AddTaskEventCopyWithImpl<$Res, AddTaskEvent>;
}

/// @nodoc
class _$AddTaskEventCopyWithImpl<$Res, $Val extends AddTaskEvent>
    implements $AddTaskEventCopyWith<$Res> {
  _$AddTaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadDataEventImplCopyWith<$Res> {
  factory _$$LoadDataEventImplCopyWith(
          _$LoadDataEventImpl value, $Res Function(_$LoadDataEventImpl) then) =
      __$$LoadDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDataEventImplCopyWithImpl<$Res>
    extends _$AddTaskEventCopyWithImpl<$Res, _$LoadDataEventImpl>
    implements _$$LoadDataEventImplCopyWith<$Res> {
  __$$LoadDataEventImplCopyWithImpl(
      _$LoadDataEventImpl _value, $Res Function(_$LoadDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadDataEventImpl implements _LoadDataEvent {
  _$LoadDataEventImpl();

  @override
  String toString() {
    return 'AddTaskEvent.loadData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(DateTime dateTime) setDateTime,
    required TResult Function(String title, String description) saveTodo,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function(DateTime dateTime)? setDateTime,
    TResult? Function(String title, String description)? saveTodo,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(DateTime dateTime)? setDateTime,
    TResult Function(String title, String description)? saveTodo,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDataEvent value) loadData,
    required TResult Function(_SetDateTimeEvent value) setDateTime,
    required TResult Function(_SaveTodoEvent value) saveTodo,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDataEvent value)? loadData,
    TResult? Function(_SetDateTimeEvent value)? setDateTime,
    TResult? Function(_SaveTodoEvent value)? saveTodo,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_SetDateTimeEvent value)? setDateTime,
    TResult Function(_SaveTodoEvent value)? saveTodo,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadDataEvent implements AddTaskEvent {
  factory _LoadDataEvent() = _$LoadDataEventImpl;
}

/// @nodoc
abstract class _$$SetDateTimeEventImplCopyWith<$Res> {
  factory _$$SetDateTimeEventImplCopyWith(_$SetDateTimeEventImpl value,
          $Res Function(_$SetDateTimeEventImpl) then) =
      __$$SetDateTimeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$SetDateTimeEventImplCopyWithImpl<$Res>
    extends _$AddTaskEventCopyWithImpl<$Res, _$SetDateTimeEventImpl>
    implements _$$SetDateTimeEventImplCopyWith<$Res> {
  __$$SetDateTimeEventImplCopyWithImpl(_$SetDateTimeEventImpl _value,
      $Res Function(_$SetDateTimeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$SetDateTimeEventImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SetDateTimeEventImpl implements _SetDateTimeEvent {
  _$SetDateTimeEventImpl(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'AddTaskEvent.setDateTime(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDateTimeEventImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDateTimeEventImplCopyWith<_$SetDateTimeEventImpl> get copyWith =>
      __$$SetDateTimeEventImplCopyWithImpl<_$SetDateTimeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(DateTime dateTime) setDateTime,
    required TResult Function(String title, String description) saveTodo,
  }) {
    return setDateTime(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function(DateTime dateTime)? setDateTime,
    TResult? Function(String title, String description)? saveTodo,
  }) {
    return setDateTime?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(DateTime dateTime)? setDateTime,
    TResult Function(String title, String description)? saveTodo,
    required TResult orElse(),
  }) {
    if (setDateTime != null) {
      return setDateTime(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDataEvent value) loadData,
    required TResult Function(_SetDateTimeEvent value) setDateTime,
    required TResult Function(_SaveTodoEvent value) saveTodo,
  }) {
    return setDateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDataEvent value)? loadData,
    TResult? Function(_SetDateTimeEvent value)? setDateTime,
    TResult? Function(_SaveTodoEvent value)? saveTodo,
  }) {
    return setDateTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_SetDateTimeEvent value)? setDateTime,
    TResult Function(_SaveTodoEvent value)? saveTodo,
    required TResult orElse(),
  }) {
    if (setDateTime != null) {
      return setDateTime(this);
    }
    return orElse();
  }
}

abstract class _SetDateTimeEvent implements AddTaskEvent {
  factory _SetDateTimeEvent(final DateTime dateTime) = _$SetDateTimeEventImpl;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$SetDateTimeEventImplCopyWith<_$SetDateTimeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveTodoEventImplCopyWith<$Res> {
  factory _$$SaveTodoEventImplCopyWith(
          _$SaveTodoEventImpl value, $Res Function(_$SaveTodoEventImpl) then) =
      __$$SaveTodoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$SaveTodoEventImplCopyWithImpl<$Res>
    extends _$AddTaskEventCopyWithImpl<$Res, _$SaveTodoEventImpl>
    implements _$$SaveTodoEventImplCopyWith<$Res> {
  __$$SaveTodoEventImplCopyWithImpl(
      _$SaveTodoEventImpl _value, $Res Function(_$SaveTodoEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$SaveTodoEventImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveTodoEventImpl implements _SaveTodoEvent {
  _$SaveTodoEventImpl(this.title, this.description);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'AddTaskEvent.saveTodo(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveTodoEventImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveTodoEventImplCopyWith<_$SaveTodoEventImpl> get copyWith =>
      __$$SaveTodoEventImplCopyWithImpl<_$SaveTodoEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(DateTime dateTime) setDateTime,
    required TResult Function(String title, String description) saveTodo,
  }) {
    return saveTodo(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function(DateTime dateTime)? setDateTime,
    TResult? Function(String title, String description)? saveTodo,
  }) {
    return saveTodo?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(DateTime dateTime)? setDateTime,
    TResult Function(String title, String description)? saveTodo,
    required TResult orElse(),
  }) {
    if (saveTodo != null) {
      return saveTodo(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDataEvent value) loadData,
    required TResult Function(_SetDateTimeEvent value) setDateTime,
    required TResult Function(_SaveTodoEvent value) saveTodo,
  }) {
    return saveTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDataEvent value)? loadData,
    TResult? Function(_SetDateTimeEvent value)? setDateTime,
    TResult? Function(_SaveTodoEvent value)? saveTodo,
  }) {
    return saveTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_SetDateTimeEvent value)? setDateTime,
    TResult Function(_SaveTodoEvent value)? saveTodo,
    required TResult orElse(),
  }) {
    if (saveTodo != null) {
      return saveTodo(this);
    }
    return orElse();
  }
}

abstract class _SaveTodoEvent implements AddTaskEvent {
  factory _SaveTodoEvent(final String title, final String description) =
      _$SaveTodoEventImpl;

  String get title;
  String get description;
  @JsonKey(ignore: true)
  _$$SaveTodoEventImplCopyWith<_$SaveTodoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
