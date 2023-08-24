import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/CustomProductItem.dart';

class RawView extends StatelessWidget {
  const RawView(this.productStream, this.BranchName, this.cRef, this.streamBranchRaw, this.streamBranchFried, this.streamBranchSauces, {Key? key, required this.CrefBranchRaw, required this.CrefBranchFried, required this.CrefstreamBranchSauces}) : super(key: key);
  final Stream<QuerySnapshot> productStream ;
  final String BranchName;
  final CollectionReference cRef;
  final Stream<QuerySnapshot> streamBranchRaw;
  final Stream<QuerySnapshot> streamBranchFried;
  final Stream<QuerySnapshot> streamBranchSauces;
  final CollectionReference CrefBranchRaw;
  final CollectionReference CrefBranchFried;
  final CollectionReference CrefstreamBranchSauces;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Row(
            children: [
              Text('نوع السوشي',style: TextStyle(fontSize: 18,fontFamily: 'Alexandria'),),
              Spacer(),
              Text(BranchName,style: TextStyle(fontFamily: 'poppins'),),
            ],
          ),
          actions: [
           

          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                  stream: streamBranchRaw ,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text(' Loading'));
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    final data = snapshot.requireData;

                    return ListView.builder(
                      itemCount: data.docs.length,
                      itemBuilder: (context, index) {
                        final docId= data.docs[index]['docId'];
                        return RCustomProdctItem(product: data.docs[index], iD: data.docs[index]['docId'],isActive: data.docs[index]['active'], CrefBranchRaw: CrefBranchRaw,CrefstreamBranchSauces: CrefstreamBranchSauces,CrefBranchFried: CrefBranchFried,);
                      },
                    );
                  }),
            ),
            // Expanded(
            //   child: StreamBuilder<QuerySnapshot>(
            //       stream: streamBranchFried ,
            //       builder: (context, snapshot) {
            //         if (snapshot.hasError) {
            //           return Center(child: Text(' Loading'));
            //         }
            //         if (snapshot.connectionState == ConnectionState.waiting) {
            //           return Center(child: CircularProgressIndicator());
            //         }
            //         final data = snapshot.requireData;
            //
            //         return ListView.builder(
            //           itemCount: data.docs.length,
            //           itemBuilder: (context, index) {
            //             final docId= data.docs[index]['docId'];
            //             return CustomProdctItem(product: data.docs[index], iD: data.docs[index]['docId'],isActive: data.docs[index]['active'], streamBranch: cRef,);
            //           },
            //         );
            //       }),
            // ),
            // Expanded(
            //   child: StreamBuilder<QuerySnapshot>(
            //       stream: streamBranchSauces ,
            //       builder: (context, snapshot) {
            //         if (snapshot.hasError) {
            //           return Center(child: Text(' Loading'));
            //         }
            //         if (snapshot.connectionState == ConnectionState.waiting) {
            //           return Center(child: CircularProgressIndicator());
            //         }
            //         final data = snapshot.requireData;
            //
            //         return ListView.builder(
            //           itemCount: data.docs.length,
            //           itemBuilder: (context, index) {
            //             final docId= data.docs[index]['docId'];
            //             return CustomProdctItem(product: data.docs[index], iD: data.docs[index]['docId'],isActive: data.docs[index]['active'], streamBranch: cRef,);
            //           },
            //         );
            //       }),
            // ),

          ],
        ));
  }
}
