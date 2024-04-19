// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() defaultState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? defaultState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? defaultState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DefaultState value) defaultState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DefaultState value)? defaultState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DefaultState value)? defaultState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadingStateImpl>
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
    return 'ProfileState.loading()';
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
    required TResult Function() defaultState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? defaultState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? defaultState,
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
    required TResult Function(_DefaultState value) defaultState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DefaultState value)? defaultState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DefaultState value)? defaultState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements ProfileState {
  factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$DefaultStateImplCopyWith<$Res> {
  factory _$$DefaultStateImplCopyWith(
          _$DefaultStateImpl value, $Res Function(_$DefaultStateImpl) then) =
      __$$DefaultStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DefaultStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$DefaultStateImpl>
    implements _$$DefaultStateImplCopyWith<$Res> {
  __$$DefaultStateImplCopyWithImpl(
      _$DefaultStateImpl _value, $Res Function(_$DefaultStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DefaultStateImpl implements _DefaultState {
  _$DefaultStateImpl();

  @override
  String toString() {
    return 'ProfileState.defaultState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DefaultStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() defaultState,
  }) {
    return defaultState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? defaultState,
  }) {
    return defaultState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? defaultState,
    required TResult orElse(),
  }) {
    if (defaultState != null) {
      return defaultState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DefaultState value) defaultState,
  }) {
    return defaultState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DefaultState value)? defaultState,
  }) {
    return defaultState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DefaultState value)? defaultState,
    required TResult orElse(),
  }) {
    if (defaultState != null) {
      return defaultState(this);
    }
    return orElse();
  }
}

abstract class _DefaultState implements ProfileState {
  factory _DefaultState() = _$DefaultStateImpl;
}

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() setImage,
    required TResult Function(String name, String surname, String imagePath)
        save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? setImage,
    TResult? Function(String name, String surname, String imagePath)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? setImage,
    TResult Function(String name, String surname, String imagePath)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_SetImageEvent value) setImage,
    required TResult Function(_SaveEvent value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_SetImageEvent value)? setImage,
    TResult? Function(_SaveEvent value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_SetImageEvent value)? setImage,
    TResult Function(_SaveEvent value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadEventImplCopyWith<$Res> {
  factory _$$LoadEventImplCopyWith(
          _$LoadEventImpl value, $Res Function(_$LoadEventImpl) then) =
      __$$LoadEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LoadEventImpl>
    implements _$$LoadEventImplCopyWith<$Res> {
  __$$LoadEventImplCopyWithImpl(
      _$LoadEventImpl _value, $Res Function(_$LoadEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadEventImpl implements _LoadEvent {
  _$LoadEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() setImage,
    required TResult Function(String name, String surname, String imagePath)
        save,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? setImage,
    TResult? Function(String name, String surname, String imagePath)? save,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? setImage,
    TResult Function(String name, String surname, String imagePath)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_SetImageEvent value) setImage,
    required TResult Function(_SaveEvent value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_SetImageEvent value)? setImage,
    TResult? Function(_SaveEvent value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_SetImageEvent value)? setImage,
    TResult Function(_SaveEvent value)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadEvent implements ProfileEvent {
  factory _LoadEvent() = _$LoadEventImpl;
}

/// @nodoc
abstract class _$$SetImageEventImplCopyWith<$Res> {
  factory _$$SetImageEventImplCopyWith(
          _$SetImageEventImpl value, $Res Function(_$SetImageEventImpl) then) =
      __$$SetImageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetImageEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SetImageEventImpl>
    implements _$$SetImageEventImplCopyWith<$Res> {
  __$$SetImageEventImplCopyWithImpl(
      _$SetImageEventImpl _value, $Res Function(_$SetImageEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetImageEventImpl implements _SetImageEvent {
  _$SetImageEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.setImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetImageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() setImage,
    required TResult Function(String name, String surname, String imagePath)
        save,
  }) {
    return setImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? setImage,
    TResult? Function(String name, String surname, String imagePath)? save,
  }) {
    return setImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? setImage,
    TResult Function(String name, String surname, String imagePath)? save,
    required TResult orElse(),
  }) {
    if (setImage != null) {
      return setImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_SetImageEvent value) setImage,
    required TResult Function(_SaveEvent value) save,
  }) {
    return setImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_SetImageEvent value)? setImage,
    TResult? Function(_SaveEvent value)? save,
  }) {
    return setImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_SetImageEvent value)? setImage,
    TResult Function(_SaveEvent value)? save,
    required TResult orElse(),
  }) {
    if (setImage != null) {
      return setImage(this);
    }
    return orElse();
  }
}

abstract class _SetImageEvent implements ProfileEvent {
  factory _SetImageEvent() = _$SetImageEventImpl;
}

/// @nodoc
abstract class _$$SaveEventImplCopyWith<$Res> {
  factory _$$SaveEventImplCopyWith(
          _$SaveEventImpl value, $Res Function(_$SaveEventImpl) then) =
      __$$SaveEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String surname, String imagePath});
}

/// @nodoc
class __$$SaveEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SaveEventImpl>
    implements _$$SaveEventImplCopyWith<$Res> {
  __$$SaveEventImplCopyWithImpl(
      _$SaveEventImpl _value, $Res Function(_$SaveEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? surname = null,
    Object? imagePath = null,
  }) {
    return _then(_$SaveEventImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveEventImpl implements _SaveEvent {
  _$SaveEventImpl(this.name, this.surname, this.imagePath);

  @override
  final String name;
  @override
  final String surname;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'ProfileEvent.save(name: $name, surname: $surname, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, surname, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveEventImplCopyWith<_$SaveEventImpl> get copyWith =>
      __$$SaveEventImplCopyWithImpl<_$SaveEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() setImage,
    required TResult Function(String name, String surname, String imagePath)
        save,
  }) {
    return save(name, surname, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? setImage,
    TResult? Function(String name, String surname, String imagePath)? save,
  }) {
    return save?.call(name, surname, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? setImage,
    TResult Function(String name, String surname, String imagePath)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(name, surname, imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_SetImageEvent value) setImage,
    required TResult Function(_SaveEvent value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_SetImageEvent value)? setImage,
    TResult? Function(_SaveEvent value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_SetImageEvent value)? setImage,
    TResult Function(_SaveEvent value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _SaveEvent implements ProfileEvent {
  factory _SaveEvent(
          final String name, final String surname, final String imagePath) =
      _$SaveEventImpl;

  String get name;
  String get surname;
  String get imagePath;
  @JsonKey(ignore: true)
  _$$SaveEventImplCopyWith<_$SaveEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
