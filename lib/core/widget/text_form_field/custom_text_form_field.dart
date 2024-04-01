import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/style/style.dart';

class CustomTextFolemFiled extends StatefulWidget {
  const CustomTextFolemFiled(
      {super.key,
      required this.text,
      required this.prefixIcon,
      this.suffixIcon,
      this.inputType,
      required this.onChanged,
      this.validate,
      required this.isPassword, required this.textEditingController});
  final String text;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? inputType;
  final Function(String) onChanged;
  final TextEditingController textEditingController;
  final String? Function(String?)? validate;
  final bool isPassword;

  @override
  State<CustomTextFolemFiled> createState() => _CustomTextFolemFiledState();
}

class _CustomTextFolemFiledState extends State<CustomTextFolemFiled> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorOpacityAnimates:true,
      cursorColor: AppColor.baseColor,
      cursorErrorColor: Colors.red,
      cursorRadius: Radius.circular(5.0),
      showCursor: true ,
      controller: widget.textEditingController,
      style: 
       Style.getStyle(color: AppColor.black,
                 context: context, fontWeight: FontWeight.w400,
                  fontsize: 12)
      
    ,
      keyboardType: widget.inputType ?? TextInputType.text,
      obscureText:widget.isPassword == true  ?  isShowPassword  :  false ,
      validator: widget.validate ??
          (data) {
            if (data!.isEmpty) {
              return 'Field is required';
            } else {
              return null;
            }
          },
      onChanged: widget.onChanged, // تم تعديل هنا
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.zero,
        
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
        // fillColor: const Color(0xffF7F8F8),
        fillColor: Colors.grey.withOpacity(.1),
        filled: true,
        border: shapeBorder(BorderSide.none),
        enabledBorder: shapeBorder(BorderSide.none),
        
        errorBorder:shapeBorder(BorderSide(color: Colors.red,width: 1)),
        focusedErrorBorder: shapeBorder(BorderSide(color: Colors.red,width: 1)),
        suffixIcon: widget.isPassword == true
            ? IconButton(
                onPressed: () {
                  isShowPassword = !isShowPassword;
                  setState(() {});
                },
                icon: Icon(widget.isPassword
                    ? Icons.visibility_off
                    : Icons.visibility),
                iconSize: 24,
                color: const Color(0xff7B6F72),
              )
            : SizedBox(),
        prefixIcon: Icon(
          widget.prefixIcon,
          size: 16,
          color: const Color(0xff7B6F72),
        ),
        hintText: widget.text,
        hintStyle:  Style.getStyle(color: AppColor.black,
                 context: context, fontWeight: FontWeight.w400,
                  fontsize: 12),
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
