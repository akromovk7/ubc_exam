import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubc_app/core/base/size_extension.dart';
import 'package:ubc_app/core/constants/color_const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ubc_app/core/constants/text_styles.dart';
import 'package:ubc_app/service/navigation_service.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 1), () {
      NavigationService.instance.pushNamedAndRemoveUntil("/auth");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConsColors.kWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 143.h,
              width: 143.w,
              child: SvgPicture.asset("assets/images/logo.svg"),
            ),
            SizedBox(height: 14.h,),
            Text("Organico",style: FontStyles.logo),
          ],
        ),
      ),
    );
  }
}
