// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteState {
  FavoriteStateStatus get status => throw _privateConstructorUsedError;
  List<Favorites> get favorites => throw _privateConstructorUsedError;
  int get selectedFavoriteIndex => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get canLoadMore => throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
  @useResult
  $Res call(
      {FavoriteStateStatus status,
      List<Favorites> favorites,
      int selectedFavoriteIndex,
      int page,
      bool canLoadMore,
      Exception? error});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? favorites = null,
    Object? selectedFavoriteIndex = null,
    Object? page = null,
    Object? canLoadMore = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoriteStateStatus,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorites>,
      selectedFavoriteIndex: null == selectedFavoriteIndex
          ? _value.selectedFavoriteIndex
          : selectedFavoriteIndex // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteStateImplCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$FavoriteStateImplCopyWith(
          _$FavoriteStateImpl value, $Res Function(_$FavoriteStateImpl) then) =
      __$$FavoriteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FavoriteStateStatus status,
      List<Favorites> favorites,
      int selectedFavoriteIndex,
      int page,
      bool canLoadMore,
      Exception? error});
}

/// @nodoc
class __$$FavoriteStateImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateImpl>
    implements _$$FavoriteStateImplCopyWith<$Res> {
  __$$FavoriteStateImplCopyWithImpl(
      _$FavoriteStateImpl _value, $Res Function(_$FavoriteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? favorites = null,
    Object? selectedFavoriteIndex = null,
    Object? page = null,
    Object? canLoadMore = null,
    Object? error = freezed,
  }) {
    return _then(_$FavoriteStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoriteStateStatus,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorites>,
      selectedFavoriteIndex: null == selectedFavoriteIndex
          ? _value.selectedFavoriteIndex
          : selectedFavoriteIndex // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$FavoriteStateImpl extends _FavoriteState {
  const _$FavoriteStateImpl(
      {this.status = FavoriteStateStatus.initial,
      final List<Favorites> favorites = const [],
      this.selectedFavoriteIndex = 0,
      this.page = 1,
      this.canLoadMore = true,
      this.error})
      : _favorites = favorites,
        super._();

  @override
  @JsonKey()
  final FavoriteStateStatus status;
  final List<Favorites> _favorites;
  @override
  @JsonKey()
  List<Favorites> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  @JsonKey()
  final int selectedFavoriteIndex;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool canLoadMore;
  @override
  final Exception? error;

  @override
  String toString() {
    return 'FavoriteState(status: $status, favorites: $favorites, selectedFavoriteIndex: $selectedFavoriteIndex, page: $page, canLoadMore: $canLoadMore, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            (identical(other.selectedFavoriteIndex, selectedFavoriteIndex) ||
                other.selectedFavoriteIndex == selectedFavoriteIndex) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_favorites),
      selectedFavoriteIndex,
      page,
      canLoadMore,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      __$$FavoriteStateImplCopyWithImpl<_$FavoriteStateImpl>(this, _$identity);
}

abstract class _FavoriteState extends FavoriteState {
  const factory _FavoriteState(
      {final FavoriteStateStatus status,
      final List<Favorites> favorites,
      final int selectedFavoriteIndex,
      final int page,
      final bool canLoadMore,
      final Exception? error}) = _$FavoriteStateImpl;
  const _FavoriteState._() : super._();

  @override
  FavoriteStateStatus get status;
  @override
  List<Favorites> get favorites;
  @override
  int get selectedFavoriteIndex;
  @override
  int get page;
  @override
  bool get canLoadMore;
  @override
  Exception? get error;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
