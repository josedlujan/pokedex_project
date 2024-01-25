import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/presentation/pages/pokedex/bloc/favorite/favorite_bloc.dart';
import 'package:pokedex/presentation/pages/pokedex/bloc/favorite/favorite_event.dart';
import 'package:pokedex/presentation/pages/pokedex/bloc/favorite/favorite_selector.dart';
import 'package:pokedex/presentation/pages/pokedex/bloc/favorite/favorite_state.dart';
import 'package:pokedex/presentation/widgets/app_bar.dart';
import 'package:pokedex/presentation/widgets/loading.dart';

import 'package:pokedex/presentation/widgets/scaffold.dart';

//import '../bloc/favorite/favorite_bloc.dart';

@RoutePage()
class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  FavoriteBloc get favoriteBloc => context.read<FavoriteBloc>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scheduleMicrotask(() {
      favoriteBloc.add(const FavoriteLoadStarted());
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PokeballScaffold(
        body: Stack(
          children: [
            NestedScrollView(
              headerSliverBuilder: (_, __) => [
                AppMovingTitleSliverAppBar(title: 'Favoritos'),
              ],
              body: FavoriteStateStatusSelector(
                (status) {
                  switch (status) {
                    case FavoriteStateStatus.initial:
                    case FavoriteStateStatus.loading:
                      return const PikaLoadingIndicator();

                    case FavoriteStateStatus.success:
                    case FavoriteStateStatus.loadingMore:
                      return _buildGrid();

                    case FavoriteStateStatus.failure:
                      return _buildError();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Pokemen Favorites Grid
Widget _buildGrid() {
  return CustomScrollView(
    slivers: [
      SliverPadding(
        padding: const EdgeInsets.all(28),
        sliver: NumberOfFavoritesSelector((numberOfFavorites) {
          return SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            delegate: SliverChildBuilderDelegate(
              (_, index) {
                return FavoriteSelector(index, (favorites, _) {
                  return ListTile(
                    title: Text('1'),
                  );
                });
              },
              childCount: numberOfFavorites,
            ),
          );
        }),
      ),
      SliverToBoxAdapter(
        child: Container(
          padding: const EdgeInsets.only(bottom: 28),
          child: const PikaLoadingIndicator(),
        ),
      ),
    ],
  );
}

Widget _buildError() {
  return CustomScrollView(
    slivers: [
      // PokemonRefreshControl(onRefresh: _onRefresh),
      SliverFillRemaining(
        child: Container(
          padding: const EdgeInsets.only(bottom: 28),
          alignment: Alignment.center,
          child: const Icon(
            Icons.warning_amber_rounded,
            size: 60,
            color: Colors.black26,
          ),
        ),
      ),
    ],
  );
}
