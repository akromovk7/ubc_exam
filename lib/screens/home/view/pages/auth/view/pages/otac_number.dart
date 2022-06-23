import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ubc_app/core/components/text_styles.dart';
import 'package:ubc_app/core/constants/color_const.dart';
import 'package:ubc_app/core/constants/icon_const.dart';
import 'package:ubc_app/screens/home/view/pages/auth/cubit/auth_cubit.dart';
import 'package:ubc_app/screens/home/view/pages/auth/state/auth_state.dart';
import 'package:ubc_app/service/navigation_service.dart';
import 'package:ubc_app/widgets/app_bar_widget.dart';
import 'package:ubc_app/widgets/button_widget.dart';
import 'package:ubc_app/widgets/text_form_widget.dart';
import 'package:ubc_app/widgets/validator_control_widget.dart';

class OTACNumberView extends StatelessWidget {
  OTACNumberView({Key? key}) : super(key: key);

  TextEditingController digitCodeController = TextEditingController();

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
              center: Text("OTAC Number", style: FontStyles.appBartext),
              trailing: SizedBox(
                width: 160.w,
              ),
            ),
            FadeInDown(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 48.h),
                    child: Text("Enter Authorization Code",
                        style: FontStyles.welcome),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.h),
                    child: Text("We have sent SMS to:",
                        style: FontStyles.greytextmini),
                  ),
                  Text("+1 (XXX) XXX-X120", style: FontStyles.appBartext),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.w, top: 40.h, right: 20.w, bottom: 10.h),
                    child: MyTextField.textField(
                      isShown: context.watch<AuthCubit>().getShown,
                      text: "6 Digit Code",
                      controller: digitCodeController,
                      validator: ValidatorController.nameValidator,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 246.w),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Resend Code",
                        style: FontStyles.forgot,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
                    child: MyElevatedButton.buttonstyle(
                        ontap: () => context
                            .read<AuthCubit>()
                            .changeState(ResetPasswordState()),
                        text: "Next"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
