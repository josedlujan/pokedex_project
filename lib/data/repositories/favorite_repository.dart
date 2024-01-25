import 'package:pokedex/data/entities/favorites.dart';

abstract class FavoriteRepository {
  const FavoriteRepository();

  Future<List<Favorites>> getAllFavorites();
}
