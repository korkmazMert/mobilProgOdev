import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'anasayfa.dart';
import 'todo_hive_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Dizin kayıt işlemleri
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  //tablo(box) işlemleri
  Hive.registerAdapter(todoHiveModelAdapter());
  await Hive.openBox<todoHiveModel>('liste');

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Anasayfa()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('hoşgeldiniz...'),
          ],
        ),
      ),
    );
  }
}
