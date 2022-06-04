import 'package:hive_flutter/hive_flutter.dart';
import 'package:todoapp/todo_hive_model.dart';

class Operations {
  Future<int> gorevEkle(String gorev, String tarih) async {
    final gorevBox = Hive.box<todoHiveModel>('liste');
    return await gorevBox.add(
      todoHiveModel(gorev: gorev, tarih: tarih),
    );
  }

  void gorevSil() {}
  todoHiveModel gorevGetir(dynamic key) {
    return Hive.box<todoHiveModel>('liste')
        .values
        .firstWhere((element) => element.key == key);
  }

  List<todoHiveModel> gorevleriGetir() {
    return Hive.box<todoHiveModel>('liste').values.toList();
  }

  void gorevGuncelle() {}
}
