import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/entities/favorites.dart';
import 'package:pokedex/presentation/pages/pokedex/bloc/favorite/favorite_bloc.dart';
import 'package:pokedex/presentation/pages/pokedex/bloc/favorite/favorite_state.dart';

class FavoriteStateSelector<T>
    extends BlocSelector<FavoriteBloc, FavoriteState, T> {
  FavoriteStateSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(
          builder: (_, value) => builder(value),
        );
}

class FavoriteStateStatusSelector
    extends FavoriteStateSelector<FavoriteStateStatus> {
  FavoriteStateStatusSelector(Widget Function(FavoriteStateStatus) builder,
      {super.key})
      : super(
          selector: (state) => state.status,
          builder: builder,
        );
}

class NumberOfFavoritesSelector extends FavoriteStateSelector<int> {
  NumberOfFavoritesSelector(Widget Function(int) builder, {super.key})
      : super(
          selector: (state) => state.favorites.length,
          builder: builder,
        );
}

class FavoriteSelector extends FavoriteStateSelector<FavoriteSelectorState> {
  FavoriteSelector(int index, Widget Function(Favorites, bool) builder,
      {super.key})
      : super(
          selector: (state) => FavoriteSelectorState(
            state.favorites[index],
            state.selectedFavoriteIndex == index,
          ),
          builder: (value) => builder(value.favorites, value.selected),
        );
}

class FavoriteSelectorState {
  final Favorites favorites;
  final bool selected;

  const FavoriteSelectorState(this.favorites, this.selected);

  @override
  bool operator ==(Object other) =>
      other is FavoriteSelectorState &&
      favorites == other.favorites &&
      selected == other.selected;

  @override
  int get hashCode => favorites.hashCode ^ selected.hashCode;
}
