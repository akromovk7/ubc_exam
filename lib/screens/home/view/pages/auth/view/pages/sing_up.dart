import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ubc_app/core/constants/color_const.dart';
import 'package:ubc_app/core/constants/icon_const.dart';
import 'package:ubc_app/core/components/text_styles.dart';
import 'package:ubc_app/screens/home/view/pages/auth/cubit/auth_cubit.dart';
import 'package:ubc_app/screens/home/view/pages/auth/state/auth_state.dart';
import 'package:ubc_app/service/navigation_service.dart';
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
              leading: IconButton(
                  onPressed: () => NavigationService.instance.pop(),
                  icon: ConsIcons.leftArrow),
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
                    Padding(
                      padding: EdgeInsets.symmetric(
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: StatefulBuilder(
                        builder: (context, setState) {
                          return MyTextField.textField(
                            isShown: context.watch<AuthCubit>().getShown,
                            text: "Password",
                            controller: passwordController,
                            validator: ValidatorController.passwordValidator,
                            iconButton: IconButton(
                              onPressed: () {
                                context.read<AuthCubit>().obSecure();
                                setState(() {});
                              },
                              icon: ConsIcons.eye,
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 6.h),
                      child: Text(
                        "Password Confirmation",
                        style: FontStyles.darkGreytextmini,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: StatefulBuilder(
                        builder: (context, setState) {
                          return MyTextField.textField(
                            isShown: context.watch<AuthCubit>().getShown,
                            text: "Password Confirmation",
                            controller: passwordConfController,
                            validator: ValidatorController.passwordValidator,
                            iconButton: IconButton(
                              onPressed: () {
                                context.read<AuthCubit>().obSecure();
                                setState(() {});
                              },
                              icon: ConsIcons.eye,
                            ),
                          );
                        },
                      ),
                    ),
                    Row(
                      children: [
                        StatefulBuilder(
                          builder: (context, setState) {
                            return Checkbox(
                              value: context.watch<AuthCubit>().getChecked,
                              onChanged: (bool) {
                                context.read<AuthCubit>().checked();
                                setState(() {});
                              },
                            );
                          },
                        ),
                        Text("I accept the ",style: FontStyles.acceptBlack),
                        Text("Terms of Use",style: FontStyles.accept),
                        Text(" and ",style: FontStyles.acceptBlack),
                        Text("Privacy Policy",style: FontStyles.accept),
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
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h),
                      child: MyElevatedButton.buttonstyle(
                          ontap: () => context
                              .read<AuthCubit>()
                              .changeState(ForgotState()),
                          text: "Sign Up with Google",
                          textcolor: ConsColors.kTextBlack,
                          buttoncolor: ConsColors.kWhite),
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
