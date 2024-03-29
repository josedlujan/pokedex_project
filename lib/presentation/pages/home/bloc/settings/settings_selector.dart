import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pokedex/presentation/pages/home/bloc/settings/settings_bloc.dart';
import 'package:pokedex/presentation/pages/home/bloc/settings/settings_state.dart';
import 'package:pokedex/presentation/themes/themes.dart';

class SettingsSelector<T> extends BlocSelector<SettingsBloc, SettingsState, T> {
  SettingsSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(
          builder: (_, value) => builder(value),
        );
}

class SettingsThemeSelector extends SettingsSelector<AppTheme> {
  SettingsThemeSelector({
    super.key,
    required super.builder,
  }) : super(
          selector: (state) => state.theme,
        );
}
