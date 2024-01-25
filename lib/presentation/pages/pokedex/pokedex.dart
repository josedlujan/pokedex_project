import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/presentation/navigation/navigation.dart';
import 'package:pokedex/presentation/pages/pokedex/bloc/pokemon/pokemon_bloc.dart';
import 'package:pokedex/presentation/pages/pokedex/bloc/pokemon/pokemon_event.dart';
import 'package:pokedex/presentation/pages/pokedex/bloc/pokemon/pokemon_selector.dart';
import 'package:pokedex/presentation/pages/pokedex/bloc/pokemon/pokemon_state.dart';
import 'package:pokedex/presentation/widgets/loading.dart';
import 'package:pokedex/utils/extensions/animation.dart';
import 'package:pokedex/data/entities/pokemon.dart';

import 'package:pokedex/presentation/modals/generation_modal.dart';
import 'package:pokedex/presentation/modals/search_modal.dart';
import 'package:pokedex/presentation/widgets/app_bar.dart';
import 'package:pokedex/presentation/widgets/pokemon_card.dart';
import 'package:pokedex/presentation/widgets/animated_overlay.dart';
import 'package:pokedex/presentation/widgets/fab.dart';
import 'package:pokedex/presentation/widgets/scaffold.dart';
import 'package:pokedex/presentation/widgets/pokemon_refresh_control.dart';

part 'sections/fab_menu.dart';
part 'sections/pokemon_grid.dart';

@RoutePage()
class PokedexPage extends StatefulWidget {
  const PokedexPage({super.key});

  @override
  State<StatefulWidget> createState() => _PokedexPageState();
}

class _PokedexPageState extends State<PokedexPage> {
  int _itemSelected = 0;

  void _onItemTapped(int index) {
    setState(() {
      _itemSelected = index;
    });

    switch (index) {
      case 0:
        context.router.push(const PokedexRoute());
        break;

      case 1:
        context.router.replace(const FavoritesRoute());
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PokeballScaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _itemSelected,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.deepOrange.withOpacity(0.5),
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Pokemons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
        ],
      ),
      body: const Stack(
        children: [
          _PokemonGrid(),
          _FabMenu(),
        ],
      ),
    );
  }
}
