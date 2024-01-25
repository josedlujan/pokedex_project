import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/presentation/pages/items/bloc/item/item_bloc.dart';
import 'package:pokedex/presentation/pages/items/bloc/item/item_event.dart';
import 'package:pokedex/presentation/pages/items/bloc/item/item_selector.dart';
import 'package:pokedex/presentation/pages/items/bloc/item/item_state.dart';
import 'package:pokedex/presentation/widgets/loading.dart';
import 'package:pokedex/utils/extensions/animation.dart';
import 'package:pokedex/presentation/modals/generation_modal.dart';
import 'package:pokedex/presentation/modals/search_modal.dart';
import 'package:pokedex/presentation/widgets/animated_overlay.dart';
import 'package:pokedex/presentation/widgets/app_bar.dart';
import 'package:pokedex/presentation/widgets/fab.dart';
import 'package:pokedex/presentation/widgets/scaffold.dart';
import 'package:pokedex/presentation/widgets/pokemon_refresh_control.dart';

import 'widgets/item_card.dart';

part 'sections/fab_menu.dart';
part 'sections/items_grid.dart';

@RoutePage()
class ItemsPage extends StatefulWidget {
  const ItemsPage({super.key});

  @override
  ItemsPageState createState() => ItemsPageState();
}

class ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    return PokeballScaffold(
      body: const Stack(
        children: [
          _ItemGrid(),
        ],
      ),
    );
  }
}
