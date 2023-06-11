
import 'package:bankly_app/presentaion/contraller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../presentation.dart';
import 'custom_imputfield.dart';

class SearchbarWidget extends StatelessWidget {
  final TrController controller = Get.find();
  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius : BorderRadius.all(Radius.circular(10)),
          boxShadow : [BoxShadow(
              color: ColorManager.lightblue,
              offset: Offset(0,4),
              blurRadius: 11
          )],
          color : ColorManager.white,
        ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 11),
        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: <Widget>[Container(

              height: 26,

              child:CustomInputField(
                label: StringValue.search,
                hintText: 'Search', onChange: (value ) {
                  controller.filterTransactions(value);
                  controller.index.value = 3;
                  if(controller.filteredTransaction.isEmpty && value.isNotEmpty){
                    controller.isNotFound.value = true;
                  }else{
                    controller.isNotFound.value = false;
                  }
                  },
              )
          ),
          ],
        ),
      ),
    );
  }
}
