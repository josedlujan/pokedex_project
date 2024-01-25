import 'package:injectable/injectable.dart';
import 'package:pokedex/core/usecase.dart';
import 'package:pokedex/data/entities/favorites.dart';
import 'package:pokedex/data/repositories/favorite_repository.dart';

@singleton
class GetFavoriteUseCase extends UseCase<List<Favorites>, NoParams?> {
  final FavoriteRepository _favoriteRepository;

  const GetFavoriteUseCase({
    required FavoriteRepository favoriteRepository,
  }) : _favoriteRepository = favoriteRepository;

  @override
  Future<List<Favorites>> call([NoParams? params]) {
    return _favoriteRepository.getAllFavorites();
  }
}
