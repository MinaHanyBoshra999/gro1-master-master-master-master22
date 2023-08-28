import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gro1/view_admin/OrdersPage.dart';
import 'package:gro1/view_admin/shopCategories.dart';


class CoBranchPage extends StatelessWidget {
   CoBranchPage({Key? key, this.name, this.name2, required this.productStream, required this.BranchName, required this.cRef, required this.streamBranchOrders, required this.streamBranchRaw, required this.streamBranchFried, required this.streamBranchSauces, required this.deleteRef,required this.CrefBranchFried,required this.CrefstreamBranchSauces, required this.CrefBranchRaw, required this.cref3, required this.streamBranchOrders2}) : super(key: key);
final name;
final name2;
  final Stream<QuerySnapshot> productStream ;
  final String BranchName;
  final CollectionReference cRef;
  final Stream<QuerySnapshot> streamBranchOrders;
  final Stream<QuerySnapshot> streamBranchOrders2;
  final Stream<QuerySnapshot> streamBranchRaw;
  final Stream<QuerySnapshot> streamBranchFried;
  final Stream<QuerySnapshot> streamBranchSauces;
  final CollectionReference deleteRef;
  CollectionReference CrefBranchRaw;
  CollectionReference CrefBranchFried;
  CollectionReference CrefstreamBranchSauces;
   final CollectionReference cref3;
  // final Stream<QuerySnapshot> productSt
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff241468),
        title: const Text(' الفروع ',style: TextStyle(
            fontFamily: 'Alexandria'
          ),
        ),

      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(height: 30,),
              ShopCoBranch(BranchName: BranchName,cRef: cRef,productStream: productStream,streamBranchOrders:streamBranchOrders ,streamBranchFried: streamBranchFried,streamBranchRaw: streamBranchRaw, streamBranchSauces: streamBranchSauces, deleteRef: deleteRef, CrefBranchRaw: CrefBranchRaw, CrefstreamBranchSauces:CrefstreamBranchSauces,CrefBranchFried: CrefBranchFried),
              const SizedBox(height: 30,),

              Stack(
                clipBehavior: Clip.none,

                alignment: AlignmentDirectional.topEnd,
                children: [
                OrdersCoBranch(streamBranchOrders: streamBranchOrders, productStream: productStream, BranchName: BranchName, cRef: cRef,deleteRef: deleteRef,cref3: cref3),
                Positioned(
                  right: -5,
                  top: -10,
                  child: Container(

                    width: 30,
                    height: 30,
                    alignment: AlignmentDirectional.center,

                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green),
                    child: StreamBuilder<QuerySnapshot>(
                      stream: streamBranchOrders2,
                      builder: (context, snapshot) {
                        if(!snapshot.hasData){
                          return const Center(child: CircularProgressIndicator());
                        }
                        if(snapshot.hasError)
                        {
                          return const Center(child: CircularProgressIndicator(),);
                        }

                        return Text('${snapshot.requireData.docs.length}');
                      },),
                  ),
                )
              ],)

            ],
          ),
        ],
      ),


    );
  }
}

class OrdersCoBranch extends StatelessWidget {


  final Stream<QuerySnapshot> streamBranchOrders;
  final Stream<QuerySnapshot> productStream ;
  final String BranchName;
  final CollectionReference cRef;
  final CollectionReference deleteRef;
  final CollectionReference cref3;

  const OrdersCoBranch({super.key, required this.streamBranchOrders, required this.productStream, required this.BranchName, required this.cRef, required this.deleteRef, required this.cref3});


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
        child: const Center(child: Text('Orders',style: TextStyle(
            fontSize: 30,
          fontFamily: 'poppins'
        ))),

      ),
      onTap: () {



          Get.to(()=>OrdersPage(productStream: productStream, BranchName: BranchName, cRef: cRef,streamBranchOrders: streamBranchOrders, deleteRef: deleteRef,cref3: cref3,));


      },
    );
  }
}
class ShopCoBranch extends StatelessWidget {

   ShopCoBranch({super.key, required this.streamBranchOrders, required this.productStream, required this.BranchName, required this.cRef, required this.streamBranchRaw, required this.streamBranchFried, required this.streamBranchSauces, required this.deleteRef,required this.CrefBranchRaw,required this.CrefstreamBranchSauces,required this.CrefBranchFried});

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
          border: Border.all(color: const Color(0xff241468), width: 3), // Adding the outline border
        ),
        child: const Center(child: Text('Shop',style: TextStyle(
            fontSize: 30,
        fontFamily: 'Poppins'
        ))),

      ),
      onTap: () {



Get.to(()=>ShopCategoryPage(streamBranchOrders: streamBranchOrders, productStream: productStream, BranchName: BranchName, cRef: cRef, deleteRef: deleteRef, streamBranchRaw: streamBranchRaw, streamBranchFried: streamBranchFried, streamBranchSauces: streamBranchSauces, CrefBranchFried:CrefBranchFried , CrefstreamBranchSauces: CrefstreamBranchSauces,CrefBranchRaw: CrefBranchRaw,));

      },
    );
  }
}
