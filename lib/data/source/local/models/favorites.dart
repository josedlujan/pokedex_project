import 'package:hive/hive.dart';

part 'favorites.g.dart';

@HiveType(typeId: 5)
class FavoriteHiveModel extends HiveObject {
  static const String boxKey = 'favorite';

  @HiveField(0)
  String? name;

  @HiveField(1)
  String? category;

  @HiveField(2)
  String? imageurl;

  @HiveField(3)
  String? effect;
}
