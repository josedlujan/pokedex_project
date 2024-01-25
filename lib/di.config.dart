// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pokedex/data/repositories/favorite_repository.dart' as _i7;
import 'package:pokedex/data/repositories/favorite_repository.default.dart'
    as _i8;
import 'package:pokedex/data/repositories/item_repository.dart' as _i11;
import 'package:pokedex/data/repositories/item_repository.default.dart' as _i12;
import 'package:pokedex/data/repositories/pokemon_repository.dart' as _i13;
import 'package:pokedex/data/repositories/pokemon_repository.default.dart'
    as _i14;
import 'package:pokedex/data/source/github/github_datasource.dart' as _i10;
import 'package:pokedex/data/source/github/network.dart' as _i5;
import 'package:pokedex/data/source/local/local_datasource.dart' as _i4;
import 'package:pokedex/data/usecases/favorite_usecases.dart' as _i9;
import 'package:pokedex/data/usecases/item_usecases.dart' as _i17;
import 'package:pokedex/data/usecases/pokemon_usecases.dart' as _i16;
import 'package:pokedex/di.dart' as _i20;
import 'package:pokedex/presentation/pages/home/bloc/settings/settings_bloc.dart'
    as _i6;
import 'package:pokedex/presentation/pages/items/bloc/item/item_bloc.dart'
    as _i18;
import 'package:pokedex/presentation/pages/pokedex/bloc/favorite/favorite_bloc.dart'
    as _i15;
import 'package:pokedex/presentation/pages/pokedex/bloc/pokemon/pokemon_bloc.dart'
    as _i19;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.Dio>(registerModule.dio);
    await gh.singletonAsync<_i4.LocalDataSource>(
      () {
        final i = const _i4.LocalDataSource();
        return i.initialize().then((_) => i);
      },
      preResolve: true,
    );
    gh.singleton<_i5.NetworkManager>(_i5.NetworkManager(dio: gh<_i3.Dio>()));
    gh.singleton<_i6.SettingsBloc>(_i6.SettingsBloc());
    gh.singleton<_i7.FavoriteRepository>(_i8.DefaultFavoriteRepository(
        localDataSource: gh<_i4.LocalDataSource>()));
    gh.singleton<_i9.GetFavoriteUseCase>(_i9.GetFavoriteUseCase(
        favoriteRepository: gh<_i7.FavoriteRepository>()));
    gh.singleton<_i10.GithubDataSource>(
        _i10.GithubDataSource(networkManager: gh<_i5.NetworkManager>()));
    gh.singleton<_i11.ItemRepository>(_i12.DefaultItemRepository(
      githubDataSource: gh<_i10.GithubDataSource>(),
      localDataSource: gh<_i4.LocalDataSource>(),
    ));
    gh.singleton<_i13.PokemonRepository>(_i14.PokemonDefaultRepository(
      githubDataSource: gh<_i10.GithubDataSource>(),
      localDataSource: gh<_i4.LocalDataSource>(),
    ));
    gh.singleton<_i15.FavoriteBloc>(
        _i15.FavoriteBloc(favoriteRepository: gh<_i7.FavoriteRepository>()));
    gh.singleton<_i16.GetAllPokemonsUseCase>(_i16.GetAllPokemonsUseCase(
        pokemonRepository: gh<_i13.PokemonRepository>()));
    gh.singleton<_i17.GetItemUseCase>(
        _i17.GetItemUseCase(itemRepository: gh<_i11.ItemRepository>()));
    gh.singleton<_i16.GetPokemonUseCase>(_i16.GetPokemonUseCase(
        pokemonRepository: gh<_i13.PokemonRepository>()));
    gh.singleton<_i16.GetPokemonsUseCase>(_i16.GetPokemonsUseCase(
        pokemonRepository: gh<_i13.PokemonRepository>()));
    gh.singleton<_i18.ItemBloc>(
        _i18.ItemBloc(itemRepository: gh<_i11.ItemRepository>()));
    gh.singleton<_i19.PokemonBloc>(
        _i19.PokemonBloc(pokemonRepository: gh<_i13.PokemonRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i20.RegisterModule {}
