// import 'package:flutter/material.dart';
// import 'package:todoapp/operations.dart';

// import 'todo_hive_model.dart';

// class GorevlerListesi extends StatefulWidget {
//   const GorevlerListesi({Key? key}) : super(key: key);

//   @override
//   State<GorevlerListesi> createState() => _GorevlerListesiState();
// }

// class _GorevlerListesiState extends State<GorevlerListesi> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               child: FutureBuilder(
//                 future: Operations().gorevleriGetir(),
//                 builder:
//                     (context, AsyncSnapshot<List<todoHiveModel>> snapshot) {
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return const CircularProgressIndicator.adaptive();
//                   } else if (snapshot.connectionState == ConnectionState.done) {
//                     return Container(
//                       child: ListView.builder(
//                         itemCount: snapshot.data?.length,
//                         itemBuilder: (BuildContext context, int index) {
//                           return ListTile(
//                             leading: const Icon(Icons.accessibility_new),
//                             title: Text(
//                                 '${snapshot.data![index].gorev} - ${snapshot.data![index].icerik}'),
//                           );
//                         },
//                       ),
//                     );
//                   } else {
//                     return const Text('farklı bir durum oluştu');
//                   }
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
