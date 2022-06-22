import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:ubc_app/core/constants/icon_const.dart';
import 'package:ubc_app/core/constants/text_styles.dart';
import 'package:ubc_app/screens/home/view/pages/auth/cubit/auth_cubit.dart';
import 'package:ubc_app/widgets/button_widget.dart';
import 'package:ubc_app/widgets/number_input_widgets.dart';
import 'package:ubc_app/widgets/text_form_widget.dart';
import 'package:ubc_app/widgets/validator_control_widget.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String initialCountry = "US";
  PhoneNumber number = PhoneNumber(isoCode: 'US');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInDown(
                duration: const Duration(seconds: 1),
                child: Padding(
                  padding: EdgeInsets.only(top: 46.h, left: 32.w, right: 33.w),
                  child: SvgPicture.asset("assets/images/welcome.svg"),
                ),
              ),
              FadeInUp(
                child: Padding(
                  padding: EdgeInsets.only(top: 35.h, left: 20.w),
                  child: Text("Welcome", style: FontStyles.welcome),
                ),
              ),
              FadeInUp(
                child: Padding(
                  padding: EdgeInsets.only(top: 16.h, left: 20.w),
                  child: Text(
                      "Welcome to Organico Mobile Apps. Please\nfill in the field below to sign in.",
                      style: FontStyles.greytextmini),
                ),
              ),
              FadeInUp(
                child: NumberInput(
                    mtop: 32.h,
                    mleft: 20.w,
                    mright: 20.w,
                    pleft: 24.w,
                    initialCountry: initialCountry,
                    phoneController: phoneController),
              ),
              FadeInUp(
                child: Container(
                  alignment: Alignment.center,
                  height: 52.h,
                  width: 374.w,
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
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
                      prefixIcon:
                          IconButton(onPressed: () {}, icon: ConsIcons.lock)),
                ),
              ),
              FadeInUp(
                child: Padding(
                  padding: EdgeInsets.only(left: 226.w),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: FontStyles.forgot,
                    ),
                  ),
                ),
              ),
              FadeInUp(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 30.h),
                  child: MyElevatedButton.buttonstyle(text: "Sign in"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
