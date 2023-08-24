import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gro1/view/coBracnch_Page.dart';
import 'package:gro1/widgets/raw_category.dart';

class ShopCategoryPage extends StatelessWidget {
   ShopCategoryPage({Key? key, required this.streamBranchOrders, required this.productStream, required this.BranchName, required this.cRef, required this.deleteRef, required this.streamBranchRaw, required this.streamBranchFried, required this.streamBranchSauces, required this.CrefBranchFried,required this.CrefstreamBranchSauces, required this.CrefBranchRaw}) : super(key: key);
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff241468),
        title: const Text(' الطلبات ',style: TextStyle(
            fontFamily: 'Alexandria'
        ),
        ),
      ),
      body: Column(
        children: [
          const Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('نوع السوشي',
                  style: TextStyle(
                    fontFamily: 'Alexandria',
                    fontSize: 34,
                    color: Colors.blue
                  ),
                ),
              ),
            ],
          ),



          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [

                  Column(
                    children: [
                      SizedBox(height: 20,),
                      RawCategory(streamBranchOrders: streamBranchOrders, productStream: productStream, BranchName: BranchName, cRef: cRef, deleteRef: deleteRef, streamBranchRaw: streamBranchRaw, streamBranchFried: streamBranchFried, streamBranchSauces: streamBranchSauces, CrefstreamBranchSauces: CrefstreamBranchSauces, CrefBranchFried: CrefBranchFried,CrefBranchRaw: CrefBranchRaw),
                      SizedBox(height: 20,),
                      FriedCategory(streamBranchOrders: streamBranchOrders, productStream: productStream, BranchName: BranchName, cRef: cRef, deleteRef: deleteRef, streamBranchRaw: streamBranchRaw, streamBranchFried: streamBranchFried, streamBranchSauces: streamBranchSauces,CrefBranchRaw: CrefBranchRaw,CrefBranchFried: CrefBranchFried,CrefstreamBranchSauces: CrefstreamBranchSauces),
                      SizedBox(height: 20,),
                      SaucesCategory(streamBranchOrders: streamBranchOrders, productStream: productStream, BranchName: BranchName, cRef: cRef, deleteRef: deleteRef, streamBranchRaw: streamBranchRaw, streamBranchFried: streamBranchFried, streamBranchSauces: streamBranchSauces,CrefBranchFried: CrefBranchFried, CrefstreamBranchSauces: CrefstreamBranchSauces,CrefBranchRaw: CrefBranchRaw,),
                    ],
                  )

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
