import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:ubc_app/core/constants/color_const.dart';
import 'package:ubc_app/core/constants/text_styles.dart';

class NumberInput extends StatelessWidget {
  const NumberInput({
    Key? key,
    required this.initialCountry,
    required this.phoneController,
    this.mtop = 0.0,
    this.mleft = 0.0,
    this.mright = 0.0,
    this.mbottom = 0.0,
    this.ptop = 0.0,
    this.pleft = 0.0,
    this.pright = 0.0,
    this.pbottom = 0.0,
  }) : super(key: key);
  final double mtop;
  final double mleft;
  final double mright;
  final double mbottom;
  final double pleft;
  final double pright;
  final double pbottom;
  final double ptop;
  final String initialCountry;
  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: mtop, left: mleft, right: mright),
      padding: EdgeInsets.only(
          left: pleft, right: pright, bottom: pbottom, top: ptop),
      decoration: BoxDecoration(
          color: ConsColors.kWhite,
          boxShadow: [
            BoxShadow(
              color: const Color(0XFFEEEEEE),
              blurRadius: 10.r,
              offset: const Offset(0, 4),
            )
          ],
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Colors.black.withOpacity(0.13))),
      child: Stack(
        children: [
          InternationalPhoneNumberInput(
            initialValue: PhoneNumber(isoCode: initialCountry),
            onInputChanged: (value) {},
            selectorConfig: SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
            ignoreBlank: false,
            inputDecoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 15.h, left: -20.w),
                border: InputBorder.none,
                hintText: "Your Phone Number",
                hintStyle: FontStyles.greytextmini),
            textFieldController: phoneController,
            formatInput: false,
            keyboardType: const TextInputType.numberWithOptions(
                signed: true, decimal: true),
          ),
          Positioned(
            left: 90.w,
            height: 52.h,
            width: 1,
            child: Container(
              color: Colors.black.withOpacity(0.13),
            ),
          ),
        ],
      ),
    );
  }
}
