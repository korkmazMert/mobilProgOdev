// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

part of 'todo_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class todoHiveModelAdapter extends TypeAdapter<todoHiveModel> {
  @override
  final int typeId = 1;

  @override
  todoHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return todoHiveModel(
      gorev: fields[0] as String,
      tarih: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, todoHiveModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.gorev)
      ..writeByte(1)
      ..write(obj.tarih);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is todoHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
