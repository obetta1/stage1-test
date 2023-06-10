import 'package:bankly_app/domain/model.dart';
import 'package:bankly_app/presentaion/presentation.dart';
import 'package:flutter/material.dart';

import '../../app/di.dart';
import 'home_viewmodel.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeViewModel _viewModel = instance<HomeViewModel>();

   @override
   void initState() {
     _bind();
     super.initState();
   }

   _bind() {
     _viewModel.start();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(StringValue.appbarTitle),
      ),

      body: Column(
        children: [

          StreamBuilder<List<TransactionModel>>(
              stream: _viewModel.outputHomeData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: HomeCard(transaction: snapshot.data![index]),
                        );
                      }
                  );
                }else{
                  return SizedBox();
                }
              }
          ),
        ],
      ) ,
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.transaction}) : super(key: key);
  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return    Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: AppSizeValue.s25,
                    width: AppSizeValue.s25,
                    child: Image(image: AssetImage('assets/images/1.5x/credit_icon.png'), fit: BoxFit.contain,),
                  ),
                  SizedBox(width: AppSizeValue.s25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text('${transaction.trnCounterPartyService}',
                      style: mediumTextStyle(color: ColorManager.darkPrimary, fontSize: AppSizeValue.s16), ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, ),
                        child: Text('${transaction.trnDate}', style: regularTextStyle(color: ColorManager.darkGrey),),
                      )
                    ],
                  ),
                ],
              ),
              Text('${transaction.trnAmount}', style: regularTextStyle(color: ColorManager.green, fontSize: AppSizeValue.s16),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppPaddingValue.p15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: AppSizeValue.s0_5,
              color: ColorManager.grey2,
            ),
          )
        ],
      ),
    ) ;  // Figma Flutter Generator SearchbarWidget - FRAME - VERTICAL

  }



}

class TabCard extends StatelessWidget {
  const TabCard({Key? key, required this.orderController}) : super(key: key);
  final int orderController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              height: 40,
              color: orderController == 0
                  ? Colors.lightBlue.withAlpha(40)
                  : Colors.white,
              child: TextButton(
                  onPressed: () {
                    //orderController = 0;
                  },
                  child: const Text('All orders')),
            ),
          ),
          Expanded(
            child: Container(
              height: 40,
              color: orderController == 1
                  ? Colors.lightBlue.withAlpha(40)
                  : Colors.white,
              child: TextButton(
                  onPressed: () {
                   // orderController.index.value = 1;
                  },
                  child: const Text('Pending orders')),
            ),
          ),
          Expanded(
            child: Container(
              height: 40,
              color: orderController == 1
                  ? Colors.lightBlue.withAlpha(40)
                  : Colors.white,
              child: TextButton(
                  onPressed: () {
                    // orderController.index.value = 1;
                  },
                  child: const Text('Pending orders')),
            ),
          )
        ]
      ),
    );
  }
}
