// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:todoapp/operations.dart';
import 'package:todoapp/todo_hive_model.dart';

var gorevlerGelsin = Operations().gorevleriGetir();

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deneme'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: FutureBuilder(
              future: Operations().gorevleriGetir(),
              builder: (context, AsyncSnapshot<List<todoHiveModel>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator.adaptive();
                } else if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                    child: ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: const Icon(Icons.accessibility_new),
                          title: Text(
                              '${snapshot.data![index].gorev} - ${snapshot.data![index].icerik}'),
                        );
                      },
                    ),
                  );
                } else {
                  return const Text('Bir hata oluştu');
                }
              },
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Operations().gorevEkle('floating deneme', 'içerik');
        },
        tooltip: 'Yeni Görev Ekle',
        child: const Icon(Icons.add),
      ),
    );
  }
}
