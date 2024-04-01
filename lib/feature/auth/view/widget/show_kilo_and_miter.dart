import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class ShowKIloAndMiter extends StatelessWidget {
  const ShowKIloAndMiter({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColor.secondColor,
        borderRadius: BorderRadius.circular(16.5)
      ),
      child: TextInfo(title: title, textStyle: 
      
       Style.getStyle(color: AppColor.whiTe,
                 context: context, fontWeight: FontWeight.w500,
                  fontsize: 12),
   ),
    );
  }
}