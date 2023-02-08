// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_histories.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveHistoriesAdapter extends TypeAdapter<HiveHistories> {
  @override
  final int typeId = 1;

  @override
  HiveHistories read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveHistories(
      items: fields[0] == null ? [] : (fields[0] as List).cast<HiveHistory>(),
    );
  }

  @override
  void write(BinaryWriter writer, HiveHistories obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveHistoriesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
