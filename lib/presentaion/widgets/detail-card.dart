
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../presentation.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({Key? key, required this.startText, required this.endText, this.iconName}) : super(key: key);
  final String startText, endText;
  final String?  iconName;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: AppSizeValue.s10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('${startText}', style: regularTextStyle(color: ColorManager.darkGrey, fontSize:AppSizeValue.s14 ),),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text('${endText}', style: mediumTextStyle(color: ColorManager.black, fontSize: AppSizeValue.s14), overflow: TextOverflow.ellipsis, ),
                ),
                iconName != null?
                Container(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(iconName!),
                ): const SizedBox(),
              ],
            ),

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
    );
  }
}
