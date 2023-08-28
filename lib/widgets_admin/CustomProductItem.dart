import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gro1/model.dart';

class SCustomProdctItem extends StatelessWidget {
  SCustomProdctItem({Key? key, this.isActive=true, required this.product ,required this.iD,  required this.CrefBranchRaw, required this.CrefBranchFried, required this.CrefstreamBranchSauces}) : super(key: key);
  final bool isActive;
  final QueryDocumentSnapshot product;
   CollectionReference CrefBranchRaw;
   CollectionReference CrefBranchFried;
   CollectionReference CrefstreamBranchSauces;
  final iD;
   //CollectionReference streamBranch;
  //final String BName;
  // final moviesRef = FirebaseFirestore.instance.collection(BName).withConverter<ProductModel>(
  //   fromFirestore: (snapshot, _) => ProductModel.fromjson(snapshot.data()!),
  //   toFirestore: (ProductModel, _) => ProductModel.toJson(),
  // );
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 5,
            ),
            // Photo
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(10),
            //   child: Image.asset(
            //     height: 60,
            //     width: 40,
            //
            //     'lib/images/chicken.png',
            //   ),
            // ),
            const SizedBox(
              height: 5,
            ),
            //Product Name
            Text(
              product.get('productname'),
              style: const TextStyle(fontSize: 18, ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(
              height: 8,
            ),
            // PRICE Egp
            Text(product.get('price'),
                style:
                const TextStyle( fontSize: 16)),
            const SizedBox(
              height: 5,
            ),
            // Price Pts
            Text.rich(
              TextSpan(
                  text: '15  ',
                  style: const TextStyle(),
                  children: [
                    TextSpan(
                      text: 'Pts',
                      style:const  TextStyle(),
                    ),
                  ]),
            ),
            // Bouns Pts
            Text.rich(
              TextSpan(
                  text: 'Bouns Pts  ',
                  style: const TextStyle(),
                  children: [
                    TextSpan(
                      text: '+1',
                      style: const TextStyle(color: Colors.green),
                    ),
                  ]),
            ),
            // Catr Button
            const SizedBox(
              height: 5,
            ),



           

              const SizedBox(height: 10,),
                 Switch(value: product.get('active'), onChanged: (value) async {
                     await CrefstreamBranchSauces.doc(iD).update({
                              "active" : value
                                }).then((value) => print("User Updated"))
                                    .catchError((error) => print("Failed to update user: $error"));

                 },)

          ],
        ),
      ),
    )
        : Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 5,
              ),
              // Photo
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(10),
              //   child: Image.asset(
              //     'lib/images/chicken.png',
              //   ),
              // ),
              const SizedBox(
                height: 5,
              ),
              //Product Name
              Text(
                product.get('productname'),
                style:
                const TextStyle(fontSize: 18,),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const SizedBox(
                height: 8,
              ),
              // PRICE Egp
              Text(product.get('price'),
                  style: const TextStyle(
                      fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              // Price Pts
              Text.rich(
                TextSpan(
                    text: '15  ',
                    style: const TextStyle(),
                    children: [
                      TextSpan(
                        text: 'Pts',
                        style: const TextStyle(),
                      ),
                    ]),
              ),
              // Bouns Pts
              Text.rich(
                TextSpan(
                    text: 'Bouns Pts  ',
                    style: const TextStyle(),
                    children: [
                      TextSpan(
                        text: '+1',
                        style: const TextStyle(color: Colors.green),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 5,
              ),
              // Catr Button
             
              const SizedBox(height: 10,),
              Switch(value: product.get('active'), onChanged: (value) async {
                await CrefstreamBranchSauces.doc(iD).update({
                  "active" : value
                }).then((value) => print("User Updated"))
                    .catchError((error) => print("Failed to update user: $error"));

              },)

            ],
          ),
        ),
        Container(
          height:28,
          width: 78,
          decoration: const BoxDecoration(
            color:Color(0xffEEEEEE),
            borderRadius:
            BorderRadius.only(bottomRight: Radius.circular(8)),
          ),
          child: const Text('Sold Out ',
              style: TextStyle(
                color: Color(0xff27374D),

              ),
              textAlign: TextAlign.center),
        ),



      ]),
    );
  }
}
class FCustomProdctItem extends StatelessWidget {
  FCustomProdctItem({Key? key, this.isActive=true, required this.product ,required this.iD,  required this.CrefBranchRaw, required this.CrefBranchFried, required this.CrefstreamBranchSauces, }) : super(key: key);
  final bool isActive;
  final   QueryDocumentSnapshot product;
  final iD;
  //final Stream<QuerySnapshot> streamBranchOrders;
   //CollectionReference streamBranch;
   CollectionReference CrefBranchRaw;
   CollectionReference CrefBranchFried;
   CollectionReference CrefstreamBranchSauces;

  //final String BName;
  // final moviesRef = FirebaseFirestore.instance.collection(BName).withConverter<ProductModel>(
  //   fromFirestore: (snapshot, _) => ProductModel.fromjson(snapshot.data()!),
  //   toFirestore: (ProductModel, _) => ProductModel.toJson(),
  // );
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 5,
            ),
            // Photo
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(10),
            //   child: Image.asset(
            //     height: 60,
            //     width: 40,
            //
            //     'lib/images/chicken.png',
            //   ),
            // ),
            const SizedBox(
              height: 5,
            ),
            //Product Name
            Text(
              product.get('productname'),
              style: const TextStyle(fontSize: 18, ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(
              height: 8,
            ),
            // PRICE Egp
            Text(product.get('price'),
                style:
                const TextStyle( fontSize: 16)),
            const SizedBox(
              height: 5,
            ),
            // Price Pts
            Text.rich(
              TextSpan(
                  text: '15  ',
                  style: const TextStyle(),
                  children: [
                    TextSpan(
                      text: 'Pts',
                      style:const  TextStyle(),
                    ),
                  ]),
            ),
            // Bouns Pts
            Text.rich(
              TextSpan(
                  text: 'Bouns Pts  ',
                  style: const TextStyle(),
                  children: [
                    TextSpan(
                      text: '+1',
                      style: const TextStyle(color: Colors.green),
                    ),
                  ]),
            ),
            // Catr Button
            const SizedBox(
              height: 5,
            ),





              const SizedBox(height: 10,),
                 Switch(value: product.get('active'), onChanged: (value) async {
                     await CrefBranchFried.doc(iD).update({
                              "active" : value
                                }).then((value) => print("User Updated"))
                                    .catchError((error) => print("Failed to update user: $error"));

                 },)

          ],
        ),
      ),
    )
        : Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 5,
              ),
              // Photo
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(10),
              //   child: Image.asset(
              //     'lib/images/chicken.png',
              //   ),
              // ),
              const SizedBox(
                height: 5,
              ),
              //Product Name
              Text(
                product.get('productname'),
                style:
                const TextStyle(fontSize: 18,),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const SizedBox(
                height: 8,
              ),
              // PRICE Egp
              Text(product.get('price'),
                  style: const TextStyle(
                      fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              // Price Pts
              Text.rich(
                TextSpan(
                    text: '15  ',
                    style: const TextStyle(),
                    children: [
                      TextSpan(
                        text: 'Pts',
                        style: const TextStyle(),
                      ),
                    ]),
              ),
              // Bouns Pts
              Text.rich(
                TextSpan(
                    text: 'Bouns Pts  ',
                    style: const TextStyle(),
                    children: [
                      TextSpan(
                        text: '+1',
                        style: const TextStyle(color: Colors.green),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 5,
              ),
              // Catr Button

              const SizedBox(height: 10,),
              Switch(value: product.get('active'), onChanged: (value) async {
                await CrefBranchFried.doc(iD).update({
                  "active" : value
                }).then((value) => print("User Updated"))
                    .catchError((error) => print("Failed to update user: $error"));

              },)

            ],
          ),
        ),
        Container(
          height:28,
          width: 78,
          decoration: const BoxDecoration(
            color:Color(0xffEEEEEE),
            borderRadius:
            BorderRadius.only(bottomRight: Radius.circular(8)),
          ),
          child: const Text('Sold Out ',
              style: TextStyle(
                color: Color(0xff27374D),

              ),
              textAlign: TextAlign.center),
        ),



      ]),
    );
  }
}
class RCustomProdctItem extends StatelessWidget {
  RCustomProdctItem({Key? key, this.isActive=true, required this.product ,required this.iD, required this.CrefBranchRaw, required this.CrefBranchFried, required this.CrefstreamBranchSauces}) : super(key: key);
  final bool isActive;
  final QueryDocumentSnapshot product;
  final iD;
  //final Stream<QuerySnapshot> streamBranchOrders;
   // CollectionReference streamBranch;
  final CollectionReference CrefBranchRaw;
  final CollectionReference CrefBranchFried;
  final CollectionReference CrefstreamBranchSauces;


  //final String BName;
  // final moviesRef = FirebaseFirestore.instance.collection(BName).withConverter<ProductModel>(
  //   fromFirestore: (snapshot, _) => ProductModel.fromjson(snapshot.data()!),
  //   toFirestore: (ProductModel, _) => ProductModel.toJson(),
  // );
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 5,
            ),
            // Photo
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(10),
            //   child: Image.asset(
            //     height: 60,
            //     width: 40,
            //
            //     'lib/images/chicken.png',
            //   ),
            // ),
            const SizedBox(
              height: 5,
            ),
            //Product Name
            Text(
              product.get('productname'),
              style: const TextStyle(fontSize: 24,fontFamily: 'poppins' ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(
              height: 8,
            ),
            // PRICE Egp


            Row(
              children: [
                Text('السعر',style: TextStyle(fontFamily: 'alexandria'),),
                SizedBox(width: 10,),
                Text(product.get('price'),
                    style:
                    const TextStyle( fontSize: 20)),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            // Price Pts
            Text.rich(
              TextSpan(
                  text: '15  ',
                  style: const TextStyle(),
                  children: [
                    TextSpan(
                      text: 'Pts',
                      style:const  TextStyle(),
                    ),
                  ]),
            ),
            // Bouns Pts
            Text.rich(
              TextSpan(
                  text: 'Bouns Pts  ',
                  style: const TextStyle(),
                  children: [
                    TextSpan(
                      text: '+1',
                      style: const TextStyle(color: Colors.green),
                    ),
                  ]),
            ),
            // Catr Button
            const SizedBox(
              height: 5,
            ),





              const SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('المنتج متوفر',
                      style:TextStyle(
                        fontFamily: 'alexandria',fontSize:14
                      )
                        ),
                      SizedBox(width: 12,),
                      Switch(value: product.get('active'), onChanged: (value) async {
                          await CrefBranchRaw.doc(iD).update({
                                  "active" : value
                                    }).then((value) => print("User Updated"))
                                        .catchError((error) => print("Failed to update user: $error"));

                      },),
                    ],
                  )

          ],
        ),
      ),
    )
        : Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 5,
              ),
              // Photo
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(10),
              //   child: Image.asset(
              //     'lib/images/chicken.png',
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              //Product Name
              Text(
                product.get('productname'),
                style: const TextStyle(fontSize: 24,fontFamily: 'poppins' ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const SizedBox(
                height: 8,
              ),
              // PRICE Egp
              Row(
                children: [
                  Text('السعر',style: TextStyle(fontFamily: 'alexandria'),),
                  SizedBox(width: 10,),
                  Text(product.get('price'),
                      style:
                      const TextStyle( fontSize: 20)),
                ],
              ),
              SizedBox(height: 12,),
              // Price Pts
              Text.rich(
                TextSpan(
                    text: '15  ',
                    style: const TextStyle(),
                    children: [
                      TextSpan(
                        text: 'Pts',
                        style: const TextStyle(),
                      ),
                    ]),
              ),
              // Bouns Pts
              Text.rich(
                TextSpan(
                    text: 'Bouns Pts  ',
                    style: const TextStyle(),
                    children: [
                      TextSpan(
                        text: '+1',
                        style: const TextStyle(color: Colors.green),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 5,
              ),
              // Catr Button

              const SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('المنتج غير متوفر',
                      style:TextStyle(
                          fontFamily: 'alexandria',fontSize:14
                      )
                  ),
                  Switch(value: product.get('active'), onChanged: (value) async {
                    await CrefBranchRaw.doc(iD).update({
                      "active" : value
                    }).then((value) => print("User Updated"))
                        .catchError((error) => print("Failed to update user: $error"));

                  },),
                ],
              )

            ],
          ),
        ),
        Container(
          height:32,
          width: 98,
          decoration: const BoxDecoration(
            color:Color(0xffEEEEEE),
            borderRadius:
            BorderRadius.only(bottomRight: Radius.circular(8)),
          ),
          child: const Text('Sold Out ',
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
                fontFamily: 'poppins'

              ),
              textAlign: TextAlign.center),
        ),




      ]),
    );
  }
}