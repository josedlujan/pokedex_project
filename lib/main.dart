import 'package:flutter/material.dart';
import 'package:pokedex/presentation/app.dart';
import 'package:pokedex/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(
    GlobalBlocProviders(
      child: PokedexApp(),
    ),
  );
}
