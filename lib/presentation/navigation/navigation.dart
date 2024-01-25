import 'package:flutter/foundation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pokedex/presentation/pages/home/home.dart';
import 'package:pokedex/presentation/pages/items/items.dart';
import 'package:pokedex/presentation/pages/pokedex/pokedex.dart';
import 'package:pokedex/presentation/pages/pokemon_info/pokemon_info.dart';
import 'package:pokedex/presentation/pages/splash/splash.dart';
import 'package:pokedex/presentation/pages/types/types.dart';
import 'package:pokedex/presentation/pages/pokedex/favorites/favorites_screen.dart';

part 'navigation.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: SplashRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
        AutoRoute(path: '/pokemons', page: PokedexRoute.page),
        AutoRoute(path: '/favorites', page: FavoritesRoute.page),
        AutoRoute(path: '/pokemons/:id', page: PokemonInfoRoute.page),
        AutoRoute(path: '/types', page: TypeEffectRoute.page),
        AutoRoute(path: '/items', page: ItemsRoute.page),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.custom(
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
}
