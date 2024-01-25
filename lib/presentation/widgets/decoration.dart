import 'package:flutter/material.dart';
import 'package:pokedex/presentation/assets.gen.dart';
import 'package:pokedex/presentation/themes/extensions.dart';
import 'package:pokedex/presentation/widgets/app_bar.dart';

class PositionedPokeball extends StatelessWidget {
  final double widthFraction;

  const PositionedPokeball({
    super.key,
    this.widthFraction = 0.664,
  });

  @override
  Widget build(BuildContext context) {
    final safeAreaTop = MediaQuery.paddingOf(context).top;
    final pokeballSize = MediaQuery.sizeOf(context).width * widthFraction;
    final appBarHeight = AppBar().preferredSize.height;
    final iconButtonPadding = AppAppBar.padding.right;
    final iconSize = IconTheme.of(context).size ?? 0;

    final pokeballTopMargin = -(pokeballSize / 2 - safeAreaTop - appBarHeight / 2);
    final pokeballRightMargin = -(pokeballSize / 2 - iconButtonPadding - iconSize / 2);

    return Positioned(
      top: pokeballTopMargin,
      right: pokeballRightMargin,
      child: Image(
        image: Assets.images.pokeball.provider(),
        width: pokeballSize,
        height: pokeballSize,
        color: context.colors.text.withOpacity(0.05),
      ),
    );
  }
}
