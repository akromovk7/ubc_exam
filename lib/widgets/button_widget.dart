import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ubc_app/core/constants/color_const.dart';
import 'package:ubc_app/core/constants/font_sizes.dart';

class MyElevatedButton {
  static buttonstyle(
      {required String text,
      VoidCallback? ontap,
      Color? textcolor = ConsColors.kWhite,
      Color? buttoncolor = ConsColors.kButtonColor}) {
    return ElevatedButton(
      onPressed: ontap,
      child: Text(
        text,
        style: TextStyle(
            color: textcolor,
            fontSize: FontConst.kSmallFont,
            fontFamily: "Nunito",
            fontWeight: FontWeight.w700),
      ),
      style: ElevatedButton.styleFrom(
        primary: buttoncolor,
        fixedSize: Size(374.w, 52.h),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
      ),
    );
  }
}
