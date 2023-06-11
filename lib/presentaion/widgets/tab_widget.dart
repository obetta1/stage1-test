
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../contraller.dart';
import '../presentation.dart';

class TabCard extends StatelessWidget {
  TabCard({Key? key}) : super(key: key);
  final TrController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPaddingValue.p16),
      child: Obx(
        ()=> Container(
          height: 46,
          width: MediaQuery.of(context).size.width,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  controller.index.value = 0;
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: AppPaddingValue.p16),
                      child: Text('All', style: mediumTextStyle(color: ColorManager.darkPrimary, fontSize: AppSizeValue.s14),),
                    ),
                    Container(
                      height: AppPaddingValue.p2,
                      width: AppSizeValue.s36,
                      color: controller.index.value == 0 ?ColorManager.primary: ColorManager.secondary,
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: ()=>{
                  controller.index.value = 1
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: AppPaddingValue.p16),
                      child: Text('Credit', style: mediumTextStyle(color: ColorManager.green, fontSize: AppSizeValue.s14),),
                    ),
                    Container(
                      height: AppPaddingValue.p2,
                      width: AppSizeValue.s36,
                      color: controller.index.value == 1 ?ColorManager.primary: ColorManager.secondary,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: ()=>{
                  controller.index.value = 2
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: AppPaddingValue.p16),
                      child: Text('Debit', style: mediumTextStyle(
                          color: ColorManager.error,
                          fontSize: AppSizeValue.s14
                      ),),
                    ),
                    Container(
                      height: AppPaddingValue.p2,
                      width: AppSizeValue.s36,
                      color: controller.index.value == 2 ? ColorManager.primary: ColorManager.secondary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

