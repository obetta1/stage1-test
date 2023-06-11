import 'package:bankly_app/presentaion/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/asset_manager.dart';
import '../resources/color_manager.dart';



class CustomInputField extends StatefulWidget {
  CustomInputField({
    super.key,
    required this.label,
    required this.hintText,
    this.suffixIcon = false,
    required this.onChange,

  });
  Function(String)? onChange;
  final String label;
  final String hintText;
  final bool suffixIcon;


  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool passwordVisibility = true;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: TextFormField(
        autofocus: false,
        onChanged: widget.onChange,
        decoration: InputDecoration(
          // labelText: widget.label,
          labelStyle: textTheme.headlineLarge,
           hintText: widget.hintText,
          hintStyle: textTheme.bodySmall,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsetsDirectional.fromSTEB(1, 1, 1, 4),
          prefixIcon:  Padding(
            padding: const EdgeInsets.only(right: 18.0, top: 5,bottom: 5),
            child: SvgPicture.asset(
              AssetsImages.search,
            ),
          ),
          suffixIcon: Container(
            height: 26,
            width: 73,
            decoration: BoxDecoration(
              borderRadius : BorderRadius.all(Radius.circular(10)),
              boxShadow : [BoxShadow(
                  color: ColorManager.secondary,
                  offset: Offset(0,4),
                  blurRadius: 11
              )],
              color : ColorManager.secondary,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 Text(StringValue.filter, style: regularTextStyle(color: ColorManager.primary),),
                SvgPicture.asset(
                  AssetsImages.filter,
                ),

              ],
            ),
          )
        ),
        style: regularTextStyle(color: ColorManager.darkGrey, fontSize: 24)
        // validator: _model.passwordControllerValidator.asValidator(context),
      ),
    );
  }
}
