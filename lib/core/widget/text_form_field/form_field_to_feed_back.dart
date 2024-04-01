import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/style/style.dart';

class FormFieldToFeedBack extends StatelessWidget {
  const FormFieldToFeedBack({
    super.key,
    required this.onChanged,
    required this.textEditingController,
    // required this.text,
    // required this.prefixIcon,
    // this.suffixIcon,
    // this.inputType,
    // required this.onChanged,
    // this.validate,
    // required this.isPassword,
    //  required this.textEditingController
  });
  // final String text;
  // final IconData prefixIcon;
  // final IconData? suffixIcon;
  // final TextInputType? inputType;
  final Function(String) onChanged;
  final TextEditingController textEditingController;
  // final String? Function(String?)? validate;
  // final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 9,
      cursorOpacityAnimates: true,
      cursorColor: AppColor.secondColor,
      cursorErrorColor: Colors.red,
      cursorRadius: Radius.circular(5.0),
      showCursor: true,
      controller: textEditingController,
      style: Style.getStyle(
          color: AppColor.black,
          context: context,
          fontWeight: FontWeight.w400,
          fontsize: 12),
    
      onChanged: onChanged, // تم تعديل هنا
      decoration: InputDecoration(
                hintText:'Enter your feedback',
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
        fillColor:Color(0xffEBF8FF),
        filled: true,
        border: shapeBorder(BorderSide.none),
      ),
    );
  }

  OutlineInputBorder shapeBorder(BorderSide borderSide) {
    return OutlineInputBorder(
      borderSide: borderSide,
      borderRadius: BorderRadius.circular(12),
    );
  }
}
