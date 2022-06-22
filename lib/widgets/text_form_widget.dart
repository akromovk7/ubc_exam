import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ubc_app/core/constants/color_const.dart';
import 'package:ubc_app/core/constants/text_styles.dart';

class MyTextField {
  static textField({
    TextInputType? keyboardType,
    required String text,
    IconButton? iconButton,
    required TextEditingController controller,
    IconButton? prefixIcon,
    bool read = false,
    var onChanged,
    VoidCallback? onTap,
    FormFieldValidator<String>? validator,
    bool isShown = false,
  }) {
    return TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        readOnly: read,
        onChanged: onChanged,
        onTap: onTap,
        obscureText: isShown,
        decoration: InputDecoration(
            hintText: text,
            hintStyle: FontStyles.hintText,
            suffixIcon: iconButton,
            prefixIcon: prefixIcon,
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0.r),
              borderSide: BorderSide(color: Colors.black.withOpacity(0.13)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0.r),
              borderSide: BorderSide(color: Colors.black.withOpacity(0.13)),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0.r),
              borderSide: BorderSide(color: ConsColors.kButtonColor),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0.r),
              borderSide: const BorderSide(color: ConsColors.kButtonColor),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(100.0.r),
            ),
            ),
        validator: validator);
  }
}
