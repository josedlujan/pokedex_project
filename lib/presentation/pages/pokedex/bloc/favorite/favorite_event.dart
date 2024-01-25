import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_event.freezed.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.loadStarted({@Default(false) bool loadAll}) =
      FavoriteLoadStarted;

  const factory FavoriteEvent.loadMoreStarted() = FavoriteLoadMoreStarted;
}
