// ignore_for_file: camel_case_types
import 'package:hive/hive.dart';

part 'todo_hive_model.g.dart';

@HiveType(typeId: 1)
class todoHiveModel extends HiveObject {
  @HiveField(0)
  String gorev;
  @HiveField(1)
  String tarih;
  todoHiveModel({required this.gorev, required this.tarih});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};

    data['gorev'] = gorev;
    data['tarih'] = tarih;

    return data;
  }
}
