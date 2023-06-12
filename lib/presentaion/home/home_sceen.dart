import 'package:bankly_app/domain/model.dart';
import 'package:bankly_app/presentaion/contraller.dart';
import 'package:bankly_app/presentaion/presentation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/home_card_widget.dart';
import '../widgets/searcgbar.dart';
import '../widgets/tab_widget.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TrController controller = Get.put(TrController());

  @override
  Widget build(BuildContext context) {
    final List transact = [
      controller.allTransaction,
      controller.creditTransaction,
      controller.debitTransaction,
      controller.filteredTransaction
    ];

    return Scaffold(
      backgroundColor: ColorManager.secondary,
      appBar: CustomAppBar(routeName: Routes.homePageRoute),
      body: Column(
        children: [
          SizedBox(height: 20),
          SearchbarWidget(),
          TabCard(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: AppSizeValue.s0_5,
            color: ColorManager.grey2,
          ),
          Expanded(
            child: StreamBuilder<List<TransactionModel>>(
              stream: controller.viewInstance.outputHomeData,
              builder: (context, snapshot) {
                if (snapshot.hasData && controller.allTransaction.isNotEmpty) {
                  controller.debitTx();
                  return Obx(
                        () => Column(
                      children: [
                        if (controller.isNotFound.value)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 58.0),
                            child: Text(
                              'Not found',
                              style: boldTextStyle(
                                color: ColorManager.error,
                                fontSize: AppSizeValue.s25,
                              ),
                            ),
                          ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: transact[controller.index.value].length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: HomeCard(
                                  transaction: transact[controller.index.value][index],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(),
                      Text('Loading...'),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}






