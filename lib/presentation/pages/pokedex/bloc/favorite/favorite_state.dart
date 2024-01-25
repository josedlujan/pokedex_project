import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/entities/favorites.dart';

part 'favorite_state.freezed.dart';

enum FavoriteStateStatus {
  initial,
  loading,
  loadingMore,
  success,
  failure,
}

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default(FavoriteStateStatus.initial) FavoriteStateStatus status,
    @Default([]) List<Favorites> favorites,
    @Default(0) int selectedFavoriteIndex,
    @Default(1) int page,
    @Default(true) bool canLoadMore,
    Exception? error,
  }) = _FavoriteState;

  const FavoriteState._();

  //Favorite get selectedFavorite => favorites[selectedItemIndex];
}
