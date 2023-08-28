import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({
    Key? key,
    required this.productStream,
    required this.BranchName,
    required this.cRef,
    required this.streamBranchOrders,
    required this.deleteRef, required this.cref3,
  }) : super(key: key);

  final Stream<QuerySnapshot> productStream;
  final Stream<QuerySnapshot> streamBranchOrders;
  final String BranchName;
  final CollectionReference cRef;
  final CollectionReference deleteRef;
  final CollectionReference cref3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Text(
              'الطلبات',
              style: TextStyle(fontFamily: 'alexandria'),
            ),
          ],
        ),
        backgroundColor: const Color(0xffFF7517),
        actions: [
          IconButton(
            onPressed: () async {
              var snapshot = await deleteRef.get();
              for (var doc in snapshot.docs) {
                await doc.reference.delete();
              }
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: streamBranchOrders,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(child: Text('Loading'));
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                final data = snapshot.requireData;



                return ListView.builder(
                  itemCount: data.docs.length,
                  itemBuilder: (context, index) {

                    // print("Order :${ data.docs[index].get('order')['totalprice'].runtimeType}");
                    // final docId= data.docs[index]['docId'];
                    // dynamic dataa=data.docs[index]['order'];
                    // print('Here ${dataa}');

                    //****another Widget to build order
                    // return Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Container(
                    //     width: double.infinity,
                    //      height: 150,
                    //     decoration: BoxDecoration(
                    //       color: Colors.orangeAccent[100]
                    //     ),
                    //     child:Column(
                    //       crossAxisAlignment: CrossAxisAlignment.stretch,
                    //       children: [
                    //         Text('TotalPrice : ${data.docs[index]['order']['totalprice']}'),
                    //         Row(children: [
                    //           Text(
                    //
                    //             'Order : ${data.docs[index]['order']['orderlist'][index]['ProductName'] }'
                    //             ,
                    //             style: TextStyle(
                    //                 fontSize: 28
                    //             ),
                    //
                    //
                    //
                    //           ),
                    //          const  SizedBox(width: 10,),
                    //           Text(
                    //
                    //             '${data.docs[index]['order']['orderlist'][index]['Quantity']} '
                    //             ,
                    //             style: TextStyle(
                    //                 fontSize: 28
                    //             ),
                    //
                    //
                    //
                    //           ),
                    //         ]),
                    //
                    //       ],
                    //     ),
                    //   ),
                    // );
                    return OrderCard(
                      Color2: data.docs[index]['color'],
                      cRef3: cref3,
                      product: data.docs[index]['order']['orderlist'],
                      total: data.docs[index]['order']['Totalprice'],
                      name: data.docs[index]['order']['Name'],
                      fullAddress: data.docs[index]['order']['FullAddress'],
                      phone1: data.docs[index]['order']['Phone1'],
                      phone2: data.docs[index]['order']['Phone2'],
                      buildingNo: data.docs[index]['order']['UserBuildingNumber'],
                      floorNo: data.docs[index]['order']['UserFloorNumber'],
                      apartNo: data.docs[index]['order']['UserApartmentNumber'],
                      specialSign: data.docs[index]['order']['UserSpecialSign'],
                      deleteRef: deleteRef,
                      time: data.docs[index]['order']['Time'],
                      OrderId: data.docs[index]['order']['OrderId'],
                      payment: data.docs[index]['order']['Payment'],
                      rewardPoints: data.docs[index]['order']
                      ['RewardPoints'],
                      userId: data.docs[index]['order']['UserID'],
                      UserPoints: data.docs[index]['order']['UserPoints'],
                      PtsTotalPrice: data.docs[index]['order']
                      ['PtsTotalPrice'],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OrderCard extends StatefulWidget {
  const OrderCard({
    Key? key,
    required this.product,
    this.total,
    this.name,
    this.fullAddress,
    this.phone1,
    required this.deleteRef, this.payment, this.rewardPoints, this.userId, this.OrderId, this.UserPoints, this.TotalAfterReward, this.PtsTotalPrice, required this.cRef3, this.time, required this.Color2, this.phone2, this.buildingNo, this.floorNo, this.apartNo, this.specialSign,
  }) : super(key: key);

  final List<dynamic> product;
  final dynamic total;
  final dynamic name;
  final dynamic fullAddress;
  final dynamic phone1;
  final dynamic phone2;
  final dynamic buildingNo;
  final dynamic floorNo;
  final dynamic apartNo;
  final dynamic specialSign;

  final CollectionReference deleteRef;
  final dynamic payment;
  final dynamic rewardPoints;
  final dynamic userId;
  final dynamic OrderId;
  final dynamic UserPoints;
  final dynamic TotalAfterReward;
  final dynamic PtsTotalPrice;
  final CollectionReference cRef3;
  final String Color2;
  final dynamic time;

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: UpdateColoe(widget.Color2),
      elevation: 3,
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {
                   Get.defaultDialog(

                     // title: 'OrderId :${widget.OrderId} ',
                     content: Column(
                       children: [
                         Text('UserId :${widget.userId}',style:const TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 12)),
                         Text('OrderId :${widget.OrderId}',style:const  TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 12)),
                         //Text('${}'),
                       ],
                     ),

                     textCancel: 'Cancel',
                     onCancel:() {

                     },

                   );
              }, icon: const Icon(Icons.person)),
              Text('${widget.time}',textAlign: TextAlign.end),
            ],
          ),
          ExpansionTile(

            title: const Text('Order',style:  TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600,fontFamily: 'poppins'),),
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.product.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    'Product :   ${widget.product[index]['ProductName']}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600,fontFamily: 'poppins'),
                  ),
                  subtitle: Text(
                    'Quantity :   ${widget.product[index]['Quantity']}',
                    style: const TextStyle(fontSize: 16),
                  ),

                ),
              ),
            ],

          ),
          const Divider(),

          ListTile(
            title: Text(
              'Total Price (L.E) :   ${widget.total}',
              style: const TextStyle(fontSize: 18 , fontFamily: 'poppins'),
            ),
          ),
          const Divider(),


          ExpansionTile(
              
              title: Text( 'User Data',style:const  TextStyle(
              fontSize: 18,fontFamily: 'poppins')),
              children: [
                Text('User Name : ${widget.name }'),
                Text('Phone 1   : ${widget.phone1}'),
                Text('Phone 2   : ${widget.phone2}'),

              ],
          
          ),


          const Divider(),

          ExpansionTile(title: const Text('ADDRESS', style: const TextStyle(fontSize: 18,fontFamily: 'poppins'),),

            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('Full Address : ${widget.fullAddress}'),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Container(


                      child:Column(


                        children: [
                          const Text('Building No.'),
                          Container(
                            height:40 ,
                            width: 40,
                            decoration: BoxDecoration(

                               border: Border.all(
                                 color: Colors.orange
                               ),
                               borderRadius: BorderRadius.circular(8),
                              shape: BoxShape.rectangle
                            ),
                            child:Center(child: Text('${widget.buildingNo}')) ,)
                        ],
                      ) ,

                    ),
                    Container(


                      child:Column(


                        children: [
                          const Text('Floor No.'),
                          Container(
                            height:40 ,
                            width: 40,
                            decoration: BoxDecoration(

                                border: Border.all(
                                    color: Colors.orange
                                ),
                                borderRadius: BorderRadius.circular(8),
                                shape: BoxShape.rectangle
                            ),
                            child:Center(child: Text('${widget.floorNo} ')) ,)
                        ],
                      ) ,

                    ),
                    Container(


                      child:Column(


                        children: [
                          const Text('Apartment No.'),
                          Container(
                            height:40 ,
                            width: 40,
                            decoration: BoxDecoration(

                                border: Border.all(
                                    color: Colors.orange
                                ),
                                borderRadius: BorderRadius.circular(8),
                                shape: BoxShape.rectangle
                            ),
                            child:Center(child: Text('${widget.apartNo} ')) ,)
                        ],
                      ) ,

                    ),



                  ]),
              const SizedBox(height: 20,),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Special Sign : ${widget.specialSign}',),

                ),
              const SizedBox(
                height: 20,
              )
            ],

          ),

          const Divider(),



          const Divider(),
          ListTile(
            title:
            Text('Payment  :   ${widget.payment}',
              style:const  TextStyle(
                  fontSize: 18,fontFamily: 'poppins'),),

          ),
          const Divider(),
          ListTile(
            title:
            Text('Reward Points  :   ${widget.rewardPoints}',
              style: const TextStyle(
                  fontSize: 18,fontFamily: 'poppins'),),

          ),
          const Divider(),


          Center(
            child: ElevatedButton(

                onPressed: ()async {
                  if (widget.payment == 'Cash') {
                    await widget.cRef3.doc(widget.userId).update({
                      'points': updatePoinstCash(userPoints: widget.UserPoints,rewardpoints: widget.rewardPoints)
                    });
                    Get.snackbar('updated','points');
                  }
                  if (widget.payment == 'Points') {
                    widget.cRef3.doc(widget.userId).update({
                      'points': updtePoinstPoints(rewardpoints: widget.rewardPoints,userPoints: widget.UserPoints,Totalptsprice: widget.PtsTotalPrice)
                    });
                    Get.snackbar('udpated','points');
                  }
                },
                child: const Text('Add Reward')),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                height: 30,
                decoration: const BoxDecoration(
                  borderRadius:  BorderRadiusDirectional.horizontal(start: Radius.circular(30),end:Radius.circular(30) ),

                  shape: BoxShape.rectangle,
                  //border: Border.all(color: Colors.black), // Add a border
                  color: Color(0xFFFFF176), // Set background color
                ),
                child: ElevatedButton(
                  onPressed: () async {
                    widget.deleteRef.doc(widget.OrderId).update({
                      'color': 'Yellow',
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // Set button's background color as transparent
                    elevation: 0, // Remove button's elevation
                  ),
                  child: const Text('Yellow',style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 30 ,
                decoration: const BoxDecoration(
                  borderRadius:  BorderRadiusDirectional.horizontal(start: Radius.circular(30),end:Radius.circular(30) ),
                   shape: BoxShape.rectangle,
                  //border: Border.all(color: Colors.black),
                  color: Color(0xFF66BB6A),
                ),
                child: ElevatedButton(
                  onPressed: () async {
                    widget.deleteRef.doc(widget.OrderId).update({
                      'color': 'Green',
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: const Text('Green',style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 30 ,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                 // border: Border.all(color: Colors.black),
                  color: Colors.red,
                    borderRadius:  BorderRadiusDirectional.horizontal(start: Radius.circular(30),end:Radius.circular(30) )

                ),
                child: ElevatedButton(
                  onPressed: () async {
                    widget.deleteRef.doc(widget.OrderId).update({
                      'color': 'Red',
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: const Text('Red',style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height:30  ,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  //border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius:  BorderRadiusDirectional.horizontal(start: Radius.circular(30),end:Radius.circular(30) )
                ),
                child: ElevatedButton(
                  onPressed: () async {
                    widget.deleteRef.doc(widget.OrderId).update({
                      'color': 'White',
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: const Text('White',style: TextStyle(color: Colors.black),),
                ),
              ),

            ],
          ),
          const SizedBox(height:15 ,),



        ],
      ),
    );
  }


  int updatePoinstCash({userPoints, rewardpoints}) {
    int sum = userPoints + rewardpoints;
    return sum;
  }
  int updtePoinstPoints({userPoints, rewardpoints, Totalptsprice}){
    int sum=((userPoints-Totalptsprice) + rewardpoints );
    return sum;
  }
  dynamic UpdateColoe(colorsatue){
    if(colorsatue=='Yellow'){
      return Colors.yellow[300];
    }
    if(colorsatue=='Green'){
      return Colors.green[400];
    }
    if(colorsatue=='Red'){
      return Colors.red;
    }
    if(colorsatue=='White'){
      return Colors.white;
    }

  }

}


