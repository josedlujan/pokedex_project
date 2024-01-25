import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites.freezed.dart';
part 'favorites.g.dart';

@freezed
class Favorites with _$Favorites {
  const factory Favorites({
    required String name,
    required String image,
    required String category,
    required String effect,
  }) = _Favorites;

  factory Favorites.fromJson(Map<String, Object?> json) =>
      _$FavoritesFromJson(json);
}
