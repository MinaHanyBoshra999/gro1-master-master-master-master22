import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gro1/main.dart';

import '../view_admin/coBracnch_Page.dart';


class BranchWidget extends StatelessWidget {
  BranchWidget({Key? key, required this.streamBranch, required this.branchName, required this.cref2, this.name, this.name2, required this.streamBranchOrders, required this.streamBranchRaw, required this.streamBranchFried, required this.streamBranchSauces, required this.deleteRef, required this.CrefBranchRaw, required this.CrefBranchFried, required this.CrefstreamBranchSauces, required this.cref3, required this.streamBranchOrders2}) : super(key: key);
  final Stream<QuerySnapshot> streamBranch;
  final Stream<QuerySnapshot> streamBranchOrders;
  final Stream<QuerySnapshot> streamBranchOrders2;
  final Stream<QuerySnapshot> streamBranchRaw;
  final Stream<QuerySnapshot> streamBranchFried;
  final Stream<QuerySnapshot> streamBranchSauces;
  final String branchName;
  final CollectionReference cref2;
  final CollectionReference deleteRef;
  final name;
  final name2;
  final CollectionReference cref3;
  //final QueryDocumentSnapshot product;
   CollectionReference CrefBranchRaw;
   CollectionReference CrefBranchFried;
   CollectionReference CrefstreamBranchSauces;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        Get.to(()=>CoBranchPage(
streamBranchOrders2: streamBranchOrders2,
          name: name,name2: name2,BranchName: branchName,productStream: streamBranch,cRef: cref2, streamBranchOrders: streamBranchOrders, streamBranchRaw: streamBranchRaw, streamBranchFried: streamBranchFried,streamBranchSauces: streamBranchSauces, deleteRef: deleteRef,CrefBranchFried: CrefBranchFried,CrefstreamBranchSauces: CrefstreamBranchSauces,CrefBranchRaw: CrefBranchRaw,cref3: cref3, ));
      },
      child:Container(
        height: 130,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Color(0xff241468), width: 3), // Adding the outline border
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.grey[200], // Making the inner container transparent
          ),
          child: Center(
            child: Text(
              branchName,
              style: const TextStyle(
                color: Color(0xff241468),
                fontFamily: 'Poppins',
                fontSize: 22,
              ),
            ),
          ),
        ),




    ),
    );
  }
}
