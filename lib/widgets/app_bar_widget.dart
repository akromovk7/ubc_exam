import 'package:flutter/material.dart';
import 'package:ubc_app/core/base/size_extension.dart';

class AppBarWidget extends StatelessWidget {
  final Widget leading;
  final Widget center;
  final Widget trailing;
  final Color abcolor;
  const AppBarWidget({this.abcolor = Colors.white,this.trailing = const SizedBox(),this.center = const SizedBox(),required this.leading,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: abcolor,
      height: context.height * 0.07,
      width: context.width,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leading,
              center,
              trailing
            ],
          ),
        ),
      ),
    );
  }
}
