import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ubc_app/core/components/text_styles.dart';
import 'package:ubc_app/core/constants/color_const.dart';
import 'package:ubc_app/core/constants/icon_const.dart';
import 'package:ubc_app/screens/home/view/pages/auth/cubit/auth_cubit.dart';
import 'package:ubc_app/screens/home/view/pages/auth/state/auth_state.dart';
import 'package:ubc_app/screens/home/view/pages/central/cubit/central_cubit.dart';
import 'package:ubc_app/screens/home/view/pages/central/state/central_state.dart';
import 'package:ubc_app/service/navigation_service.dart';
import 'package:ubc_app/widgets/app_bar_widget.dart';
import 'package:ubc_app/widgets/button_widget.dart';
import 'package:ubc_app/widgets/text_form_widget.dart';
import 'package:ubc_app/widgets/validator_control_widget.dart';

class ResetPasswordView extends StatelessWidget {
  ResetPasswordView({Key? key}) : super(key: key);

TextEditingController newpasswordController = TextEditingController();
  TextEditingController newpasswordConfController = TextEditingController();

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
              center: Text("Reset Password", style: FontStyles.appBartext),
              trailing: SizedBox(
                width: 160.w,
              ),
            ),
            FadeInDown(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 40.h),
                    child: Text(
                      "Please fill in the field below to reset your current password.",
                      style: FontStyles.greytextmini,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Text(
                        "New Password",
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
                            controller: newpasswordController,
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
                      padding: EdgeInsets.only(left: 20.w,top: 6.h),
                      child: Text(
                        "New Password Confirmation",
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
                            text: "New Password Confirmation",
                            controller: newpasswordConfController,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
                    child: MyElevatedButton.buttonstyle(
                        ontap: () => NavigationService.instance.pushNamedAndRemoveUntil("/home"),
                        text: "Reset password"),
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
