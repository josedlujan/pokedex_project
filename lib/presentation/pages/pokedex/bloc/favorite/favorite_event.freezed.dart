// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loadAll) loadStarted,
    required TResult Function() loadMoreStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loadAll)? loadStarted,
    TResult? Function()? loadMoreStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loadAll)? loadStarted,
    TResult Function()? loadMoreStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteLoadStarted value) loadStarted,
    required TResult Function(FavoriteLoadMoreStarted value) loadMoreStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteLoadStarted value)? loadStarted,
    TResult? Function(FavoriteLoadMoreStarted value)? loadMoreStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteLoadStarted value)? loadStarted,
    TResult Function(FavoriteLoadMoreStarted value)? loadMoreStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res, FavoriteEvent>;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res, $Val extends FavoriteEvent>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoriteLoadStartedImplCopyWith<$Res> {
  factory _$$FavoriteLoadStartedImplCopyWith(_$FavoriteLoadStartedImpl value,
          $Res Function(_$FavoriteLoadStartedImpl) then) =
      __$$FavoriteLoadStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool loadAll});
}

/// @nodoc
class __$$FavoriteLoadStartedImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$FavoriteLoadStartedImpl>
    implements _$$FavoriteLoadStartedImplCopyWith<$Res> {
  __$$FavoriteLoadStartedImplCopyWithImpl(_$FavoriteLoadStartedImpl _value,
      $Res Function(_$FavoriteLoadStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadAll = null,
  }) {
    return _then(_$FavoriteLoadStartedImpl(
      loadAll: null == loadAll
          ? _value.loadAll
          : loadAll // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FavoriteLoadStartedImpl implements FavoriteLoadStarted {
  const _$FavoriteLoadStartedImpl({this.loadAll = false});

  @override
  @JsonKey()
  final bool loadAll;

  @override
  String toString() {
    return 'FavoriteEvent.loadStarted(loadAll: $loadAll)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteLoadStartedImpl &&
            (identical(other.loadAll, loadAll) || other.loadAll == loadAll));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadAll);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteLoadStartedImplCopyWith<_$FavoriteLoadStartedImpl> get copyWith =>
      __$$FavoriteLoadStartedImplCopyWithImpl<_$FavoriteLoadStartedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loadAll) loadStarted,
    required TResult Function() loadMoreStarted,
  }) {
    return loadStarted(loadAll);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loadAll)? loadStarted,
    TResult? Function()? loadMoreStarted,
  }) {
    return loadStarted?.call(loadAll);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loadAll)? loadStarted,
    TResult Function()? loadMoreStarted,
    required TResult orElse(),
  }) {
    if (loadStarted != null) {
      return loadStarted(loadAll);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteLoadStarted value) loadStarted,
    required TResult Function(FavoriteLoadMoreStarted value) loadMoreStarted,
  }) {
    return loadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteLoadStarted value)? loadStarted,
    TResult? Function(FavoriteLoadMoreStarted value)? loadMoreStarted,
  }) {
    return loadStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteLoadStarted value)? loadStarted,
    TResult Function(FavoriteLoadMoreStarted value)? loadMoreStarted,
    required TResult orElse(),
  }) {
    if (loadStarted != null) {
      return loadStarted(this);
    }
    return orElse();
  }
}

abstract class FavoriteLoadStarted implements FavoriteEvent {
  const factory FavoriteLoadStarted({final bool loadAll}) =
      _$FavoriteLoadStartedImpl;

  bool get loadAll;
  @JsonKey(ignore: true)
  _$$FavoriteLoadStartedImplCopyWith<_$FavoriteLoadStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteLoadMoreStartedImplCopyWith<$Res> {
  factory _$$FavoriteLoadMoreStartedImplCopyWith(
          _$FavoriteLoadMoreStartedImpl value,
          $Res Function(_$FavoriteLoadMoreStartedImpl) then) =
      __$$FavoriteLoadMoreStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteLoadMoreStartedImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$FavoriteLoadMoreStartedImpl>
    implements _$$FavoriteLoadMoreStartedImplCopyWith<$Res> {
  __$$FavoriteLoadMoreStartedImplCopyWithImpl(
      _$FavoriteLoadMoreStartedImpl _value,
      $Res Function(_$FavoriteLoadMoreStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteLoadMoreStartedImpl implements FavoriteLoadMoreStarted {
  const _$FavoriteLoadMoreStartedImpl();

  @override
  String toString() {
    return 'FavoriteEvent.loadMoreStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteLoadMoreStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loadAll) loadStarted,
    required TResult Function() loadMoreStarted,
  }) {
    return loadMoreStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loadAll)? loadStarted,
    TResult? Function()? loadMoreStarted,
  }) {
    return loadMoreStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loadAll)? loadStarted,
    TResult Function()? loadMoreStarted,
    required TResult orElse(),
  }) {
    if (loadMoreStarted != null) {
      return loadMoreStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteLoadStarted value) loadStarted,
    required TResult Function(FavoriteLoadMoreStarted value) loadMoreStarted,
  }) {
    return loadMoreStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteLoadStarted value)? loadStarted,
    TResult? Function(FavoriteLoadMoreStarted value)? loadMoreStarted,
  }) {
    return loadMoreStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteLoadStarted value)? loadStarted,
    TResult Function(FavoriteLoadMoreStarted value)? loadMoreStarted,
    required TResult orElse(),
  }) {
    if (loadMoreStarted != null) {
      return loadMoreStarted(this);
    }
    return orElse();
  }
}

abstract class FavoriteLoadMoreStarted implements FavoriteEvent {
  const factory FavoriteLoadMoreStarted() = _$FavoriteLoadMoreStartedImpl;
}
