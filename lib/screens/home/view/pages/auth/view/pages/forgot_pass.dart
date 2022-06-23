import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubc_app/core/components/text_styles.dart';
import 'package:ubc_app/core/constants/color_const.dart';
import 'package:ubc_app/core/constants/icon_const.dart';
import 'package:ubc_app/screens/home/view/pages/auth/cubit/auth_cubit.dart';
import 'package:ubc_app/screens/home/view/pages/auth/state/auth_state.dart';
import 'package:ubc_app/service/navigation_service.dart';
import 'package:ubc_app/widgets/app_bar_widget.dart';
import 'package:ubc_app/widgets/button_widget.dart';
import 'package:ubc_app/widgets/number_input_widgets.dart';

class ForgotPassView extends StatelessWidget {
  ForgotPassView({Key? key}) : super(key: key);

  TextEditingController phoneController = TextEditingController();
  String initialCountry = "US";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConsColors.kWhite,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: IconButton(
                  onPressed: () => NavigationService.instance.pop(),
                  icon: ConsIcons.leftArrow),
              center: Text(
                "Forgot Password",
                style: FontStyles.appBartext,
              ),
              trailing: SizedBox(width: 160.w),
            ),
            FadeInDown(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 32.w, right: 33.w),
                    child: SizedBox(
                        height: 393.75.h,
                        width: 349.w,
                        child: SvgPicture.asset("assets/images/forgot.svg")),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 35.h, left: 20.w),
                    child: Text("Enter your phone number",
                        style: FontStyles.welcome),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.h, left: 20.w),
                    child: Text(
                        "We need to verify you. We will send you a\none-time authorization code. ",
                        style: FontStyles.greytextmini),
                  ),
                  NumberInput(
                    mtop: 32.h,
                    mleft: 20.w,
                    mright: 20.w,
                    pleft: 24.w,
                    initialCountry: initialCountry,
                    phoneController: phoneController,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 20.w, top: 79.h),
                    child: MyElevatedButton.buttonstyle(
                        ontap: () => context
                            .read<AuthCubit>()
                            .changeState(OTACNumberState()),
                        text: "Next"),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
