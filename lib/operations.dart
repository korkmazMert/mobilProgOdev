import 'package:hive_flutter/hive_flutter.dart';
import 'package:todoapp/todo_hive_model.dart';

class Operations {
  Future<int> gorevEkle(String gorev, String icerik) async {
    final gorevBox = Hive.box<todoHiveModel>('liste');
    return await gorevBox.add(
      todoHiveModel(
        gorev: gorev,
        icerik: icerik,
      ),
    );
  }

  void gorevSil(dynamic key) {
    Hive.box<todoHiveModel>('liste').delete(key);
  }

  //hocaya sor neden for düzgün çalışmıyor
  void gorevleriSil() {
    // for (var key = 0; key < Hive.box<todoHiveModel>('liste').length; key++) {
    //   gorevSil(key);
    //Hive.box<todoHiveModel>('liste').deleteFromDisk();
  }

  gorevleriGetir() {}
}

todoHiveModel? gorevGetir(dynamic key) {
  if (Hive.box<todoHiveModel>('liste').isEmpty) {
    print('görev yok');
  } else {
    return Hive.box<todoHiveModel>('liste')
        .values
        .firstWhere((element) => element.key == key);
  }
  return null;
}

Future<List<todoHiveModel>> gorevleriGetir() async {
  return Hive.box<todoHiveModel>('liste').values.toList();
}
