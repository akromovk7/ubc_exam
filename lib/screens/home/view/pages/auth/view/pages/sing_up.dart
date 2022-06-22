import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubc_app/core/constants/color_const.dart';
import 'package:ubc_app/core/constants/icon_const.dart';
import 'package:ubc_app/core/components/text_styles.dart';
import 'package:ubc_app/screens/home/view/pages/auth/cubit/auth_cubit.dart';
import 'package:ubc_app/screens/home/view/pages/auth/state/auth_state.dart';
import 'package:ubc_app/widgets/app_bar_widget.dart';
import 'package:ubc_app/widgets/button_widget.dart';
import 'package:ubc_app/widgets/text_form_widget.dart';
import 'package:ubc_app/widgets/validator_control_widget.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConsColors.kWhite,
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              leading: ConsIcons.leftArrow,
              center: Text(
                "New Registration",
                style: FontStyles.appBartext,
              ),
              trailing: SizedBox(
                width: 160.w,
              ),
            ),
            FadeInDown(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 40.h, left: 20.w, right: 20.w, bottom: 48.h),
                      child: Text(
                        "It looks like you don’t have an account on this\nnumber. Please let us know some information for a secure service.",
                        style: FontStyles.greytextmini,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Text(
                        "Full Name",
                        style: FontStyles.darkGreytextmini,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 52.h,
                      width: 374.w,
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: MyTextField.textField(
                        isShown: context.watch<AuthCubit>().getShown,
                        text: "Full Name",
                        controller: nameController,
                        validator: ValidatorController.nameValidator,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 6.h),
                      child: Text(
                        "Password",
                        style: FontStyles.darkGreytextmini,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 52.h,
                      width: 374.w,
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: MyTextField.textField(
                        isShown: context.watch<AuthCubit>().getShown,
                        text: "Password",
                        controller: passwordController,
                        validator: ValidatorController.passwordValidator,
                        iconButton: IconButton(
                          onPressed: () {
                            context.read<AuthCubit>().obSecure();
                          },
                          icon: ConsIcons.eye,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 6.h),
                      child: Text(
                        "Password Confirmation",
                        style: FontStyles.darkGreytextmini,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 52.h,
                      width: 374.w,
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: MyTextField.textField(
                        isShown: context.watch<AuthCubit>().getShown,
                        text: "Password Confirmation",
                        controller: passwordConfController,
                        validator: ValidatorController.passwordValidator,
                        iconButton: IconButton(
                          onPressed: () {
                            context.read<AuthCubit>().obSecure();
                          },
                          icon: ConsIcons.eye,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: context.watch<AuthCubit>().getChecked,
                          onChanged: (bool) {
                            context.read<AuthCubit>().checked();
                          },
                        ),
                        SizedBox(
                            height: 22.h,
                            width: 328.w,
                            child: SvgPicture.asset("assets/images/accept.svg"))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.w, top: 40.h, right: 20.w, bottom: 24.h),
                      child: MyElevatedButton.buttonstyle(
                          ontap: () => context
                              .read<AuthCubit>()
                              .changeState(ForgotState()),
                          text: "Sign Up"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 185.w),
                      child: Text(
                        "or use",
                        style: FontStyles.greytextmini,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.w,right: 20.w, top: 24.h),
                      child: MyElevatedButton.buttonstyle(
                          ontap: () => context
                              .read<AuthCubit>()
                              .changeState(ForgotState()),
                          text: "Sign Up with Google",textcolor: ConsColors.kTextBlack,buttoncolor: ConsColors.kWhite),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
