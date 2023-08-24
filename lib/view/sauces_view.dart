import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/CustomProductItem.dart';

class SaucesView extends StatelessWidget {
  SaucesView({Key? key, required this.productStream, required this.BranchName, required this.cRef, required this.streamBranchRaw, required this.streamBranchFried, required this.streamBranchSauces,required this.CrefBranchFried,required this.CrefstreamBranchSauces,required this.CrefBranchRaw}) : super(key: key);
  final Stream<QuerySnapshot> productStream ;
  final String BranchName;
  final CollectionReference cRef;
  final Stream<QuerySnapshot> streamBranchRaw;
  final Stream<QuerySnapshot> streamBranchFried;
  final Stream<QuerySnapshot> streamBranchSauces;
   CollectionReference CrefBranchRaw;
   CollectionReference CrefBranchFried;
   CollectionReference CrefstreamBranchSauces;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(BranchName),
          actions: [
            // IconButton(onPressed: () async{
            //
            //   var doc = cRef.get();
            //   doc.then((snapshot) {
            //     snapshot.docs.forEach((doc) {
            //       doc.get('')
            //     });
            //   });
            //   // var path= deleteRef;
            //   // deleteCollection(path) {
            //   //   FirebaseFirestore().collection(collectionPath)
            //   //   FirebaseFirestore().collection(path).listDocuments().then(val => {
            //   //   val.map((val) => {
            //   //   val.delete()
            //   //   })
            //   //   });
            //   // }
            //   // await deleteRef.snapshots().map((event) => event.docs.remove(deleteRef.snapshots()));
            // }, icon: Icon(Icons.delete))

          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                  stream: streamBranchSauces ,
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
                        return SCustomProdctItem(product: data.docs[index], iD: data.docs[index]['docId'],isActive: data.docs[index]['active'],  CrefBranchRaw: CrefBranchRaw, CrefBranchFried: CrefBranchFried,CrefstreamBranchSauces: CrefstreamBranchSauces,);
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
        ));;
  }
}
