
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';



import 'package:gro1/view/Branch_PAGE.dart';


import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BranchPage()
    );
  }
}

// class ShopViewList extends StatelessWidget {
//   const ShopViewList({
//     super.key, required this.productStream, required this.BranchName, required this.cRef, required this.streamBranchRaw, required this.streamBranchFried, required this.streamBranchSauces,
//   });
//   final Stream<QuerySnapshot> productStream ;
//   final String BranchName;
//   final CollectionReference cRef;
//   final Stream<QuerySnapshot> streamBranchRaw;
//   final Stream<QuerySnapshot> streamBranchFried;
//   final Stream<QuerySnapshot> streamBranchSauces;
//   // final Stream<QuerySnapshot> productStream =
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//         appBar: AppBar(
//           backgroundColor: Colors.orange,
//           title: Text(BranchName),
//         ),
//         body: Column(
//           children: [
//             Expanded(
//               child: StreamBuilder<QuerySnapshot>(
//                   stream: streamBranchRaw ,
//                   builder: (context, snapshot) {
//                     if (snapshot.hasError) {
//                       return Center(child: Text(' Loading'));
//                     }
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return Center(child: CircularProgressIndicator());
//                     }
//                     final data = snapshot.requireData;
//
//                     return ListView.builder(
//                       itemCount: data.docs.length,
//                       itemBuilder: (context, index) {
//                         final docId= data.docs[index]['docId'];
//                         return CustomProdctItem(product: data.docs[index], iD: data.docs[index]['docId'],isActive: data.docs[index]['active'], streamBranch: cRef,);
//                       },
//                     );
//                   }),
//             ),
//
//           ],
//         ));
//   }
// }

// Expanded(
//               child: StreamBuilder<QuerySnapshot>(
//                   stream: productStream,
//                   builder: (context, snapshot) {
//                     if (snapshot.hasError) {
//                       return Center(child: Text(' Loading'));
//                     }
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return CircularProgressIndicator();
//                     }
//                     final data = snapshot.requireData;
//
//                     return ListView.builder(
//                       itemCount: data.docs.length,
//                       itemBuilder: (context, index) {
//                         //var ret=data.docs[index]['active'];
//                         bool er=true;
//                         return Switch(
//                           value: er,
//                           onChanged: (value) async{
//                                          setState(() {
//                                            er=value;
//                                          });
//                                //      er=value;
//                                //   await moviesRef.doc('8dvrpIjgS1wOyUuBogMO').update({
//                                //   "active" : true
//                                // }).then((value) => print("User Updated"))
//                                //     .catchError((error) => print("Failed to update user: $error"));
//                           },
//                         );
//                       },
//                     );
//                   }),
//             ),



//Switch(
//                           value:data.docs[index]['active'],
//                           onChanged: (value) async{
//
//
//                                  await moviesRef.doc(docId).update({
//                                  "active" : value
//                                }).then((value) => print("User Updated"))
//                                    .catchError((error) => print("Failed to update user: $error"));
//                           },
//                         );