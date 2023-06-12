

import 'package:bankly_app/domain/model.dart';
import 'package:bankly_app/presentaion/presentation.dart';
import 'package:bankly_app/presentaion/resources/asset_manager.dart';
import 'package:bankly_app/presentaion/widgets/custom_appbar.dart';
import 'package:bankly_app/presentaion/widgets/detail-card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.transactions}) : super(key: key);

  final TransactionModel transactions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.secondary,
      appBar: const CustomAppBar(routeName: Routes.detailRoute,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPaddingValue.p16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: AppPaddingValue.p31, bottom: AppSizeValue.s36),
                child: Container(
                  width: 94,
                  height: 94,
                  decoration: BoxDecoration(
                    boxShadow:  [
                      BoxShadow(
                        color: ColorManager.lightblue,
                        offset: Offset(0, 4),
                        blurRadius: AppPaddingValue.p15,
                      ),
                    ],
                    color: ColorManager.secondary,
                    borderRadius: const BorderRadius.all(Radius.elliptical(74, 74)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppPaddingValue.p17),
                    child: SvgPicture.asset(
                      AssetsImages.detailLogo,
                    ),
                  ),
                ),
              ),
              Text(
                '₦${transactions.trnAmount}',
                style: boldTextStyle(color: ColorManager.darkPrimary, fontSize: AppSizeValue.s36),
              ),
              const SizedBox(height: 80),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: AppPaddingValue.p20),
                  child: Text(
                    StringValue.details,
                    style: boldTextStyle(color: ColorManager.darkPrimary, fontSize: AppSizeValue.s18),
                  ),
                ),
              ),
              DetailCard(startText: StringValue.datandTime, endText: transactions.trnDate),
              DetailCard(startText: StringValue.reference, endText: transactions.trnContractReference, iconName: AssetsImages.copyIcon),
              DetailCard(startText: StringValue.type, endText: transactions.accountName),
              DetailCard(startText: StringValue.balance, endText: '₦${transactions.trnAmount}'),
              DetailCard(startText: StringValue.narration, endText: transactions.source),
              const SizedBox(height: AppPaddingValue.p104),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppPaddingValue.p17, horizontal: AppPaddingValue.p100),
                  child: Text(
                    StringValue.downloadReceipt,
                    style: mediumTextStyle(color: ColorManager.white, fontSize: AppSizeValue.s14),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: AppPaddingValue.p24, bottom: AppPaddingValue.p31),
                  child: Text(
                    StringValue.shareWithBankly,
                    style: mediumTextStyle(color: ColorManager.primary, fontSize: AppSizeValue.s14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
