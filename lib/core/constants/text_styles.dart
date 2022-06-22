import 'package:flutter/cupertino.dart';
import 'package:ubc_app/core/constants/color_const.dart';
import 'package:ubc_app/core/constants/font_sizes.dart';

class FontStyles {
  static TextStyle logo = TextStyle(color: ConsColors.kTextBlack,fontSize: FontConst.kMediumFont,fontFamily: "Poppins",fontWeight: FontWeight.w600); 
  static TextStyle welcome = TextStyle(color: ConsColors.kTextBlack,fontSize: FontConst.kMinMediumFont,fontFamily: "Nunito",fontWeight: FontWeight.w700); 
  static TextStyle greytextmini = TextStyle(color: ConsColors.kTextGrey,fontSize: FontConst.kSmallFont,fontFamily: "Nunito",fontWeight: FontWeight.w400); 
  static TextStyle darkGreytextmini = TextStyle(color: ConsColors.kTextDarkGrey,fontSize: FontConst.kSmallFont,fontFamily: "Nunito",fontWeight: FontWeight.w700); 
  static TextStyle hintText = TextStyle(color: ConsColors.kTextGrey,fontSize: FontConst.kSmallFont,fontFamily: "Nunito",fontWeight: FontWeight.w700); 
  static TextStyle forgot = TextStyle(color: ConsColors.kTextGreen,fontSize: FontConst.kSmallFont,fontFamily: "Nunito",fontWeight: FontWeight.w700); 
  static TextStyle accept = TextStyle(color: ConsColors.kTextGreen,fontSize: FontConst.kSmallFont,fontFamily: "Nunito",fontWeight: FontWeight.w400); 
  static TextStyle appBartext = TextStyle(color: ConsColors.kTextBlack,fontSize: FontConst.kMaxSmallFont,fontFamily: "Nunito",fontWeight: FontWeight.w700); 
}