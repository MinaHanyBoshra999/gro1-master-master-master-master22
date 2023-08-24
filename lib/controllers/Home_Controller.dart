import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:gro1/constant.dart';
import 'package:gro1/model.dart';

class HomeController extends GetxController{


  final Stream<QuerySnapshot> stream = FirebaseFirestore.instance.collection(shpI).snapshots();


 //
 // Future<DocumentSnapshot<ProductModel>> getData() async{
 //    final moviesRef = FirebaseFirestore.instance.collection('shopitems').withConverter<ProductModel>(
 //      fromFirestore: (snapshot, _) => ProductModel.fromjson(snapshot.data()!),
 //      toFirestore: (ProductModel, _) => ProductModel.toJson(),
 //    );



  // }





}