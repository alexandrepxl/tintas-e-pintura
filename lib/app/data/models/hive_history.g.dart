// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_history.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveHistoryAdapter extends TypeAdapter<HiveHistory> {
  @override
  final int typeId = 0;

  @override
  HiveHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveHistory(
      l05: fields[3] == null ? 0 : fields[3] as int,
      l25: fields[2] == null ? 0 : fields[2] as int,
      l36: fields[1] == null ? 0 : fields[1] as int,
      l18: fields[0] == null ? 0 : fields[0] as int,
      litersOfPaint: fields[4] == null ? 0.0 : fields[4] as double,
      totalArea: fields[5] == null ? 0.0 : fields[5] as double,
      createdAt: fields[6] == null ? '' : fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveHistory obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.l18)
      ..writeByte(1)
      ..write(obj.l36)
      ..writeByte(2)
      ..write(obj.l25)
      ..writeByte(3)
      ..write(obj.l05)
      ..writeByte(4)
      ..write(obj.litersOfPaint)
      ..writeByte(5)
      ..write(obj.totalArea)
      ..writeByte(6)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
