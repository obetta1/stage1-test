
import 'package:bankly_app/presentaion/widgets/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../domain/model.dart';
import '../presentation.dart';
import '../resources/asset_manager.dart';


class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.transaction}) : super(key: key);
  final TransactionModel transaction;

//this is use to check for the transaction type and return the right widget
  Widget _getTransactionType() {
    if (transaction.trnDrCr == 'withdrawal' ||
        transaction.trnDrCr == 'payment') {
      return Container(
          height: AppSizeValue.s25,
          width: AppSizeValue.s25,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSizeValue.s3),),
            color: ColorManager.lightRed,
          ),
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: SvgPicture.asset(
              AssetsImages.debitLogo,
            ),
          )
      );
    } else {
      return Container(
          height: AppSizeValue.s25,
          width: AppSizeValue.s25,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSizeValue.s3),),
            color: ColorManager.cardGreen,
          ),
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: SvgPicture.asset(
              AssetsImages.creditLogo,
            ),
          )
      );
    }
  }

  Widget _getTransactionAmount(){
   if (transaction.trnDrCr == 'withdrawal' || transaction.trnDrCr == 'payment'){
     return Text('-₦${transaction.trnAmount}',
         style: regularTextStyle(
         color:ColorManager.error, fontSize: AppSizeValue.s16)); //debit amount
    }else{
     return Text('+₦${transaction.trnAmount}',
     style: regularTextStyle(
     color: ColorManager.green ,fontSize: AppSizeValue.s16));// display credit amount
   }

  }
  @override
  Widget build(BuildContext context) {
    return    InkWell(
      onTap: ()=> Navigator.of(context).pushNamed(Routes.detailRoute, arguments: transaction),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: AppPaddingValue.p14_85),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///transaction icon container
                    _getTransactionType(),
                    SizedBox(width: AppSizeValue.s25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('${transaction.trnDrCr}',//
                          style: mediumTextStyle(color: ColorManager.darkPrimary, fontSize: AppSizeValue.s16), ),//transanction type

                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, ),
                          child: Text(timeFormat(transaction.trnDate), style: regularTextStyle(color: ColorManager.darkGrey),),//transaction date
                        )
                      ],
                    ),
                  ],
                ),
              _getTransactionAmount(),
              ],
            ),
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