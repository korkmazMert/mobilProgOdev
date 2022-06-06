import 'package:flutter/material.dart';
import 'package:todoapp/gorevler.dart';

import 'operations.dart';

class PageRouter extends StatefulWidget {
  const PageRouter({Key? key}) : super(key: key);

  @override
  State<PageRouter> createState() => _PageRouterState();
}

class _PageRouterState extends State<PageRouter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                var index = await Operations()
                    .gorevEkle('proje yap', 'projeyi yarın 1e yetiştir');
                print('eklenen görev: $index');
              },
              child: const Text(
                'Görev Ekle',
              ),
            ),
            // ElevatedButton(
            //   onPressed: () async {
            //     var gorevler = await Operations().gorevleriGetir();
            //     for (var liste in gorevler) {
            //       print(
            //           'index: ${liste.key} görev adı: ${liste.gorev} icerik: ${liste.icerik}');
            //     }
            //   },
            //   child: const Text(
            //     'Görevleri Listele',
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     var tekGorev = Operations().gorevGetir(5);

            //     print(
            //         'index: ${tekGorev?.key} görev adı: ${tekGorev?.gorev} icerik: ${tekGorev?.icerik}');
            //   },
            //   child: const Text(
            //     'Görev Bul',
            //   ),
            // ),
            ElevatedButton(
              onPressed: () {
                Operations().gorevSil(5);
              },
              child: const Text('Görev Sil'),
            ),
            ElevatedButton(
              onPressed: () {
                Operations().gorevleriSil();
              },
              child: const Text('Bütün Görevleri Sil'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const GorevlerListesi()));
            //   },
            //   child: const Text('Görev Listesine Git'),
            // ),
          ],
        ),
      ),
    );
  }
}
