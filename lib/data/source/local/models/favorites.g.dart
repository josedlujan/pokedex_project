// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteHiveModelAdapter extends TypeAdapter<FavoriteHiveModel> {
  @override
  final int typeId = 5;

  @override
  FavoriteHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteHiveModel()
      ..name = fields[0] as String?
      ..category = fields[1] as String?
      ..imageurl = fields[2] as String?
      ..effect = fields[3] as String?;
  }

  @override
  void write(BinaryWriter writer, FavoriteHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.imageurl)
      ..writeByte(3)
      ..write(obj.effect);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
