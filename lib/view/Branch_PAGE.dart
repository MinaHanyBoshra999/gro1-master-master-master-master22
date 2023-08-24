import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gro1/view/preview_dassboard.dart';

import '../widgets/Branches_WIDGET.dart';
import 'Branch_PAGE.dart';


class BranchPage extends StatelessWidget {
  const BranchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff241468),
        title: const Text('تطبيق خاص بالبائع',style: TextStyle(
          fontFamily: 'Alexandria'

        ),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {

          }, icon: IconButton(onPressed: () {
            Get.to(()=>DashboardScreen());
          }, icon: const Icon(Icons.dashboard_customize)))
        ],
      ),
      body: Padding(

        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(

          child: Column(
            children: [
            const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('اختار الفرع',style: TextStyle(fontFamily: 'Alexandria',color:Colors.blue,fontSize: 22),),
                ],
              ),
              const SizedBox(height: 20,),
              BranchWidget(
                streamBranchOrders2: FirebaseFirestore.instance
                    .collection('FaisalOrders')
                    .snapshots(),
                cref3: FirebaseFirestore.instance.collection('users'),
                CrefBranchFried: FirebaseFirestore.instance
                    .collection('FaisalShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList') ,
                CrefBranchRaw:  FirebaseFirestore.instance
                    .collection('FaisalShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList'),
                CrefstreamBranchSauces: FirebaseFirestore.instance
                    .collection('FaisalShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList'),
                deleteRef: FirebaseFirestore.instance.collection('FaisalOrders'),
                streamBranch: FirebaseFirestore.instance
                    .collection('FaisalShopItems')
                    .snapshots(),
                branchName: 'Faisal',
                cref2: FirebaseFirestore.instance.collection('FaisalShopItems'),
                name: 'Orders',
                name2: 'shop',
                streamBranchOrders: FirebaseFirestore.instance
                    .collection('FaisalOrders')
                    .snapshots(),
                streamBranchRaw: FirebaseFirestore.instance
                    .collection('FaisalShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList')
                    .snapshots(),
                streamBranchFried: FirebaseFirestore.instance
                    .collection('FaisalShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList')
                    .snapshots(),
                streamBranchSauces: FirebaseFirestore.instance
                    .collection('FaisalShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList')
                    .snapshots(),
              ),
              const SizedBox(
                height: 10,
              ),
              BranchWidget (
                cref3: FirebaseFirestore.instance.collection('users'),
                CrefstreamBranchSauces:FirebaseFirestore.instance
                    .collection('HaramShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList') ,
                CrefBranchRaw:FirebaseFirestore.instance
                    .collection('HaramShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList') ,
                CrefBranchFried: FirebaseFirestore.instance
                    .collection('HaramShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList') ,
                deleteRef:FirebaseFirestore.instance.collection('HaramOrders') ,
                streamBranch: FirebaseFirestore.instance
                    .collection('HaramShopItems')
                    .snapshots(),
                branchName: 'Haram',
                cref2:
                    FirebaseFirestore.instance.collection('HaramShopItems'),
                name: 'Orders',
                name2: 'shop',
                streamBranchOrders: FirebaseFirestore.instance
                    .collection('HaramOrders')
                    .snapshots(),
                streamBranchOrders2: FirebaseFirestore.instance
                    .collection('HaramOrders')
                    .snapshots(),
                streamBranchRaw: FirebaseFirestore.instance
                    .collection('HaramShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList')
                    .snapshots(),
                streamBranchFried: FirebaseFirestore.instance
                    .collection('HaramShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList')
                    .snapshots(),
                streamBranchSauces: FirebaseFirestore.instance
                    .collection('HaramShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList')
                    .snapshots(),
              ),
              const SizedBox(
          height: 10,
      ),
              BranchWidget(
                cref3: FirebaseFirestore.instance.collection('users'),
                CrefstreamBranchSauces:FirebaseFirestore.instance
                    .collection('OctoberShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList') ,
                CrefBranchRaw:FirebaseFirestore.instance
                    .collection('OctoberShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList') ,
                CrefBranchFried: FirebaseFirestore.instance
                    .collection('OctoberShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList') ,
                deleteRef:FirebaseFirestore.instance.collection('OctoberOrders') ,
                streamBranch: FirebaseFirestore.instance
                    .collection('OctoberShopItems')
                    .snapshots(),
                branchName: 'October',
                cref2:
                FirebaseFirestore.instance.collection('OctoberShopItems'),
                name: 'Orders',
                name2: 'shop',
                streamBranchOrders2:  FirebaseFirestore.instance
                    .collection('OctoberOrders')
                    .snapshots(),
                streamBranchOrders: FirebaseFirestore.instance
                    .collection('OctoberOrders')
                    .snapshots(),
                streamBranchRaw: FirebaseFirestore.instance
                    .collection('OctoberShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList')
                    .snapshots(),
                streamBranchFried: FirebaseFirestore.instance
                    .collection('OctoberShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList')
                    .snapshots(),
                streamBranchSauces: FirebaseFirestore.instance
                    .collection('OctoberShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList')
                    .snapshots(),
              ),
              const SizedBox(
                height: 10,
              ),
              BranchWidget(
                cref3: FirebaseFirestore.instance.collection('users'),
                CrefstreamBranchSauces:FirebaseFirestore.instance
                    .collection('NasrCityShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList') ,
                CrefBranchRaw:FirebaseFirestore.instance
                    .collection('NasrCityShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList') ,
                CrefBranchFried: FirebaseFirestore.instance
                    .collection('NasrCityShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList') ,
                deleteRef:FirebaseFirestore.instance.collection('NasrCityOrders') ,
                streamBranch: FirebaseFirestore.instance
                    .collection('NasrCityShopItems')
                    .snapshots(),
                branchName: 'NasrCity',
                cref2:
                FirebaseFirestore.instance.collection('NasrCityShopItems'),
                name: 'Orders',
                name2: 'shop',
                streamBranchOrders2:  FirebaseFirestore.instance
                    .collection('NasrCityOrders')
                    .snapshots(),
                streamBranchOrders: FirebaseFirestore.instance
                    .collection('NasrCityOrders')
                    .snapshots(),
                streamBranchRaw: FirebaseFirestore.instance
                    .collection('NasrCityShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList')
                    .snapshots(),
                streamBranchFried: FirebaseFirestore.instance
                    .collection('NasrCityShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList')
                    .snapshots(),
                streamBranchSauces: FirebaseFirestore.instance
                    .collection('NasrCityShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList')
                    .snapshots(),
              ),
              const SizedBox(
                height: 10,
              ),
              BranchWidget(
                cref3: FirebaseFirestore.instance.collection('users'),
                CrefstreamBranchSauces:FirebaseFirestore.instance
                    .collection('ZayedCityShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList') ,
                CrefBranchRaw:FirebaseFirestore.instance
                    .collection('ZayedCityShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList') ,
                CrefBranchFried: FirebaseFirestore.instance
                    .collection('ZayedCityShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList') ,
                deleteRef:FirebaseFirestore.instance.collection('ZayedCityOrders') ,
                streamBranch: FirebaseFirestore.instance
                    .collection('ZayedCityShopItems')
                    .snapshots(),
                branchName: 'ZayedCity',
                cref2:
                FirebaseFirestore.instance.collection('ZayedCityShopItems'),
                name: 'Orders',
                name2: 'shop',
                streamBranchOrders: FirebaseFirestore.instance
                    .collection('ZayedCityOrders')
                    .snapshots(),
                streamBranchOrders2: FirebaseFirestore.instance
                    .collection('ZayedCityOrders')
                    .snapshots(),
                streamBranchRaw: FirebaseFirestore.instance
                    .collection('ZayedCityShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList')
                    .snapshots(),
                streamBranchFried: FirebaseFirestore.instance
                    .collection('ZayedCityShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList')
                    .snapshots(),
                streamBranchSauces: FirebaseFirestore.instance
                    .collection('ZayedCityShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList')
                    .snapshots(),
              ),
              const SizedBox(
                height: 10,
              ),
              BranchWidget(
                cref3: FirebaseFirestore.instance.collection('users'),
                CrefstreamBranchSauces:FirebaseFirestore.instance
                    .collection('GizaShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList') ,
                CrefBranchRaw:FirebaseFirestore.instance
                    .collection('GizaShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList') ,
                CrefBranchFried: FirebaseFirestore.instance
                    .collection('GizaShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList') ,
                deleteRef:FirebaseFirestore.instance.collection('GizaOrders') ,
                streamBranch: FirebaseFirestore.instance
                    .collection('GizaShopItems')
                    .snapshots(),
                branchName: 'Giza',
                cref2:
                FirebaseFirestore.instance.collection('GizaShopItems'),
                name: 'Orders',
                name2: 'shop',
                streamBranchOrders: FirebaseFirestore.instance
                    .collection('GizaOrders')
                    .snapshots(),
                streamBranchOrders2: FirebaseFirestore.instance
                    .collection('GizaOrders')
                    .snapshots(),
                streamBranchRaw: FirebaseFirestore.instance
                    .collection('GizaShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList')
                    .snapshots(),
                streamBranchFried: FirebaseFirestore.instance
                    .collection('GizaShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList')
                    .snapshots(),
                streamBranchSauces: FirebaseFirestore.instance
                    .collection('GizaShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList')
                    .snapshots(),
              ),
              const SizedBox(
                height: 10,
              ),
              BranchWidget(
                cref3: FirebaseFirestore.instance.collection('users'),
                CrefstreamBranchSauces:FirebaseFirestore.instance
                    .collection('ShoubraShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList') ,
                CrefBranchRaw:FirebaseFirestore.instance
                    .collection('ShoubraShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList') ,
                CrefBranchFried: FirebaseFirestore.instance
                    .collection('ShoubraShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList') ,
                deleteRef:FirebaseFirestore.instance.collection('ShoubraOrders') ,
                streamBranch: FirebaseFirestore.instance
                    .collection('ShoubraShopItems')
                    .snapshots(),
                branchName: 'Shoubra',
                cref2:
                FirebaseFirestore.instance.collection('ShoubraShopItems'),
                name: 'Orders',
                name2: 'shop',
                streamBranchOrders: FirebaseFirestore.instance
                    .collection('ShoubraOrders')
                    .snapshots(),
                streamBranchRaw: FirebaseFirestore.instance
                    .collection('ShoubraShopItems')
                    .doc('RawItems')
                    .collection('RawItemsList')
                    .snapshots(),
                streamBranchFried: FirebaseFirestore.instance
                    .collection('ShoubraShopItems')
                    .doc('FriedItems')
                    .collection('FriedItemsList')
                    .snapshots(),
                streamBranchSauces: FirebaseFirestore.instance
                    .collection('ShoubraShopItems')
                    .doc('SaucesItems')
                    .collection('SaucesItemsList')
                    .snapshots(),
                streamBranchOrders2:FirebaseFirestore.instance
                  .collection('ShoubraOrders')
                  .snapshots(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
