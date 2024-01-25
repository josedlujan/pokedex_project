import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/presentation/widgets/app_bar.dart';
import 'package:pokedex/presentation/widgets/loading.dart';

import 'package:pokedex/presentation/widgets/scaffold.dart';

@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

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
              body: _buildGrid(),
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
        sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            delegate: SliverChildBuilderDelegate(
              (_, index) {
                return ListTile(
                  title: Text('Pokemon'),
                  subtitle: Text('Text'),
                );
              },
              childCount: 10,
            )),
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
