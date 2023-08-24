import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gro1/view/fried_view.dart';
import 'package:gro1/view/raw_view.dart';
import 'package:gro1/view/sauces_view.dart';
import 'package:gro1/widgets/shop_view_list.dart';

class RawCategory extends StatelessWidget {
   RawCategory({Key? key, required this.streamBranchOrders, required this.productStream, required this.BranchName, required this.cRef, required this.deleteRef, required this.streamBranchRaw, required this.streamBranchFried, required this.streamBranchSauces,required this.CrefstreamBranchSauces,required this.CrefBranchFried,required this.CrefBranchRaw}) : super(key: key);
  final Stream<QuerySnapshot> streamBranchOrders;
  final Stream<QuerySnapshot> productStream ;
  final String BranchName;
  final CollectionReference cRef;
  final CollectionReference deleteRef;
  CollectionReference CrefBranchRaw;
  CollectionReference CrefBranchFried;
  CollectionReference CrefstreamBranchSauces;

  final Stream<QuerySnapshot> streamBranchRaw;
  final Stream<QuerySnapshot> streamBranchFried;
  final Stream<QuerySnapshot> streamBranchSauces;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 130,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Color(0xff241468), width: 3), // Adding the outline border
        ),
        child: const Center(child: Text('Raw',style: TextStyle(
            fontSize: 30,
            fontFamily: 'poppins'

            )
          )
        ),

      ),
      onTap: () {



        Get.to(()=>RawView(productStream, BranchName, cRef, streamBranchRaw, streamBranchFried, streamBranchSauces,CrefBranchRaw: CrefBranchRaw,CrefBranchFried: CrefBranchFried,CrefstreamBranchSauces: CrefstreamBranchSauces,));

      },
    ); ;
  }
}
class FriedCategory extends StatelessWidget {
  FriedCategory({Key? key, required this.streamBranchOrders, required this.productStream, required this.BranchName, required this.cRef, required this.deleteRef, required this.streamBranchRaw, required this.streamBranchFried,  required this.streamBranchSauces,required this.CrefstreamBranchSauces,required this.CrefBranchRaw,required this.CrefBranchFried}) : super(key: key);
  final Stream<QuerySnapshot> streamBranchOrders;
  final Stream<QuerySnapshot> productStream ;
  final String BranchName;
  final CollectionReference cRef;
  final CollectionReference deleteRef;
  CollectionReference CrefBranchRaw;
  CollectionReference CrefBranchFried;
  CollectionReference CrefstreamBranchSauces;

  final Stream<QuerySnapshot> streamBranchRaw;
  final Stream<QuerySnapshot> streamBranchFried;
  final Stream<QuerySnapshot> streamBranchSauces;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:Container(
        height: 130,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Color(0xff241468), width: 3), // Adding the outline border
        ),
        child: Center(child: Text('Fried',style: TextStyle(
            fontSize: 30,
            fontFamily: 'poppins'

        )
        )
        ),
      ),
      onTap: () {



        Get.to(()=>FriedView(productStream: productStream, BranchName: BranchName, cRef: cRef, streamBranchRaw: streamBranchRaw, streamBranchFried: streamBranchFried, streamBranchSauces: streamBranchSauces,CrefstreamBranchSauces: CrefstreamBranchSauces, CrefBranchRaw:CrefBranchRaw, CrefBranchFried: CrefBranchFried ,));

      },
    ); ;
  }
}
class SaucesCategory extends StatelessWidget {
  SaucesCategory({Key? key, required this.streamBranchOrders, required this.productStream, required this.BranchName, required this.cRef, required this.deleteRef, required this.streamBranchRaw, required this.streamBranchFried, required this.streamBranchSauces,required this.CrefBranchFried,required this.CrefBranchRaw,required this.CrefstreamBranchSauces}) : super(key: key);
  final Stream<QuerySnapshot> streamBranchOrders;
  final Stream<QuerySnapshot> productStream ;
  final String BranchName;
  final CollectionReference cRef;
  final CollectionReference deleteRef;
  CollectionReference CrefBranchRaw;
  CollectionReference CrefBranchFried;
  CollectionReference CrefstreamBranchSauces;

  final Stream<QuerySnapshot> streamBranchRaw;
  final Stream<QuerySnapshot> streamBranchFried;
  final Stream<QuerySnapshot> streamBranchSauces;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 130,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Color(0xff241468), width: 3), // Adding the outline border
        ),
        child: Center(child: Text('Sauces',style: TextStyle(
            fontSize: 30,
            fontFamily: 'poppins'

        )
        )
        ),

      ),
      onTap: () {



        Get.to(()=>SaucesView(productStream: productStream, BranchName: BranchName, cRef: cRef, streamBranchRaw: streamBranchRaw, streamBranchFried: streamBranchFried, streamBranchSauces: streamBranchSauces,CrefBranchRaw: CrefBranchRaw,CrefBranchFried: CrefBranchFried,CrefstreamBranchSauces: CrefstreamBranchSauces,));


      },
    ); ;
  }
}
