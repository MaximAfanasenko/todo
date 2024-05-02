// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(List<Todo> todos) setData,
    required TResult Function(Todo todo) deleteTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function(List<Todo> todos)? setData,
    TResult? Function(Todo todo)? deleteTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<Todo> todos)? setData,
    TResult Function(Todo todo)? deleteTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDataEvent value) loadData,
    required TResult Function(_SetData value) setData,
    required TResult Function(_DeleteTodo value) deleteTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDataEvent value)? loadData,
    TResult? Function(_SetData value)? setData,
    TResult? Function(_DeleteTodo value)? deleteTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_SetData value)? setData,
    TResult Function(_DeleteTodo value)? deleteTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

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
    extends _$TasksEventCopyWithImpl<$Res, _$LoadDataEventImpl>
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
    return 'TasksEvent.loadData()';
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
    required TResult Function(List<Todo> todos) setData,
    required TResult Function(Todo todo) deleteTodo,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function(List<Todo> todos)? setData,
    TResult? Function(Todo todo)? deleteTodo,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<Todo> todos)? setData,
    TResult Function(Todo todo)? deleteTodo,
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
    required TResult Function(_SetData value) setData,
    required TResult Function(_DeleteTodo value) deleteTodo,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDataEvent value)? loadData,
    TResult? Function(_SetData value)? setData,
    TResult? Function(_DeleteTodo value)? deleteTodo,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_SetData value)? setData,
    TResult Function(_DeleteTodo value)? deleteTodo,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadDataEvent implements TasksEvent {
  factory _LoadDataEvent() = _$LoadDataEventImpl;
}

/// @nodoc
abstract class _$$SetDataImplCopyWith<$Res> {
  factory _$$SetDataImplCopyWith(
          _$SetDataImpl value, $Res Function(_$SetDataImpl) then) =
      __$$SetDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$$SetDataImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$SetDataImpl>
    implements _$$SetDataImplCopyWith<$Res> {
  __$$SetDataImplCopyWithImpl(
      _$SetDataImpl _value, $Res Function(_$SetDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$SetDataImpl(
      null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$SetDataImpl implements _SetData {
  _$SetDataImpl(final List<Todo> todos) : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TasksEvent.setData(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDataImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDataImplCopyWith<_$SetDataImpl> get copyWith =>
      __$$SetDataImplCopyWithImpl<_$SetDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(List<Todo> todos) setData,
    required TResult Function(Todo todo) deleteTodo,
  }) {
    return setData(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function(List<Todo> todos)? setData,
    TResult? Function(Todo todo)? deleteTodo,
  }) {
    return setData?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<Todo> todos)? setData,
    TResult Function(Todo todo)? deleteTodo,
    required TResult orElse(),
  }) {
    if (setData != null) {
      return setData(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDataEvent value) loadData,
    required TResult Function(_SetData value) setData,
    required TResult Function(_DeleteTodo value) deleteTodo,
  }) {
    return setData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDataEvent value)? loadData,
    TResult? Function(_SetData value)? setData,
    TResult? Function(_DeleteTodo value)? deleteTodo,
  }) {
    return setData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_SetData value)? setData,
    TResult Function(_DeleteTodo value)? deleteTodo,
    required TResult orElse(),
  }) {
    if (setData != null) {
      return setData(this);
    }
    return orElse();
  }
}

abstract class _SetData implements TasksEvent {
  factory _SetData(final List<Todo> todos) = _$SetDataImpl;

  List<Todo> get todos;
  @JsonKey(ignore: true)
  _$$SetDataImplCopyWith<_$SetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTodoImplCopyWith<$Res> {
  factory _$$DeleteTodoImplCopyWith(
          _$DeleteTodoImpl value, $Res Function(_$DeleteTodoImpl) then) =
      __$$DeleteTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});
}

/// @nodoc
class __$$DeleteTodoImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$DeleteTodoImpl>
    implements _$$DeleteTodoImplCopyWith<$Res> {
  __$$DeleteTodoImplCopyWithImpl(
      _$DeleteTodoImpl _value, $Res Function(_$DeleteTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$DeleteTodoImpl(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$DeleteTodoImpl implements _DeleteTodo {
  _$DeleteTodoImpl(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TasksEvent.deleteTodo(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTodoImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTodoImplCopyWith<_$DeleteTodoImpl> get copyWith =>
      __$$DeleteTodoImplCopyWithImpl<_$DeleteTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(List<Todo> todos) setData,
    required TResult Function(Todo todo) deleteTodo,
  }) {
    return deleteTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
    TResult? Function(List<Todo> todos)? setData,
    TResult? Function(Todo todo)? deleteTodo,
  }) {
    return deleteTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<Todo> todos)? setData,
    TResult Function(Todo todo)? deleteTodo,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDataEvent value) loadData,
    required TResult Function(_SetData value) setData,
    required TResult Function(_DeleteTodo value) deleteTodo,
  }) {
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDataEvent value)? loadData,
    TResult? Function(_SetData value)? setData,
    TResult? Function(_DeleteTodo value)? deleteTodo,
  }) {
    return deleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_SetData value)? setData,
    TResult Function(_DeleteTodo value)? deleteTodo,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class _DeleteTodo implements TasksEvent {
  factory _DeleteTodo(final Todo todo) = _$DeleteTodoImpl;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$DeleteTodoImplCopyWith<_$DeleteTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Todo> todos)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DataState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

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
    extends _$TasksStateCopyWithImpl<$Res, _$LoadingStateImpl>
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
    return 'TasksState.loading()';
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
    required TResult Function(List<Todo> todos) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Todo> todos)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? data,
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
    required TResult Function(_DataState value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements TasksState {
  factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$DataStateImplCopyWith<$Res> {
  factory _$$DataStateImplCopyWith(
          _$DataStateImpl value, $Res Function(_$DataStateImpl) then) =
      __$$DataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$$DataStateImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$DataStateImpl>
    implements _$$DataStateImplCopyWith<$Res> {
  __$$DataStateImplCopyWithImpl(
      _$DataStateImpl _value, $Res Function(_$DataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$DataStateImpl(
      null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$DataStateImpl implements _DataState {
  _$DataStateImpl(final List<Todo> todos) : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TasksState.data(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStateImplCopyWith<_$DataStateImpl> get copyWith =>
      __$$DataStateImplCopyWithImpl<_$DataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) data,
  }) {
    return data(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Todo> todos)? data,
  }) {
    return data?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DataState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataState implements TasksState {
  factory _DataState(final List<Todo> todos) = _$DataStateImpl;

  List<Todo> get todos;
  @JsonKey(ignore: true)
  _$$DataStateImplCopyWith<_$DataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
