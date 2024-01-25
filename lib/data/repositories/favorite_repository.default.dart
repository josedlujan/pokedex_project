import 'package:injectable/injectable.dart';
import 'package:pokedex/data/entities/favorites.dart';
import 'package:pokedex/data/repositories/favorite_repository.dart';
import 'package:pokedex/data/source/local/local_datasource.dart';
import 'package:pokedex/data/source/mappers/local_to_entity_mapper.dart';

@Singleton(as: FavoriteRepository)
class DefaultFavoriteRepository extends FavoriteRepository {
  final LocalDataSource _localDataSource;

  const DefaultFavoriteRepository({
    required LocalDataSource localDataSource,
  }) : _localDataSource = localDataSource;

  @override
  Future<List<Favorites>> getAllFavorites() async {
    final favoriteHiveModels = await _localDataSource.getFavoriteItems();
    final favoriteEntities =
        favoriteHiveModels.map((e) => e.toEntity()).toList();

    return favoriteEntities;
  }
}
