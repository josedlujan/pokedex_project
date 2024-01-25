import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/entities/favorites.dart';
import 'package:pokedex/data/repositories/favorite_repository.dart';
import 'package:pokedex/presentation/pages/pokedex/bloc/favorite/favorite_event.dart';
import 'package:pokedex/presentation/pages/pokedex/bloc/favorite/favorite_state.dart';
import 'package:stream_transform/stream_transform.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final FavoriteRepository _favoriteRepository;

  FavoriteBloc({required FavoriteRepository favoriteRepository})
      : _favoriteRepository = favoriteRepository,
        super(const FavoriteState()) {
    on<FavoriteLoadStarted>(
      _onLoadStarted,
      transformer: (events, mapper) => events.switchMap(mapper),
    );
  }

  void _onLoadStarted(
      FavoriteLoadStarted event, Emitter<FavoriteState> emit) async {
    try {
      emit(state.copyWith(
        status: FavoriteStateStatus.loading,
      ));

      final favorites = event.loadAll
          ? await _favoriteRepository.getAllFavorites()
          : await _favoriteRepository.getAllFavorites();

      //final canLoadMore = favorites.length >= favoritesPerPage;

      emit(state.copyWith(
        status: FavoriteStateStatus.success,
        favorites: favorites,
        page: 1,
        canLoadMore: false,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(
        status: FavoriteStateStatus.failure,
        error: e,
      ));
    }
  }
}
