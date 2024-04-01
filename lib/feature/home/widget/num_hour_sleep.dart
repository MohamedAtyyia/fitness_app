import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class NumHoureSleep extends StatelessWidget {
  const NumHoureSleep({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.h,
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      decoration: BoxDecoration(
          color: AppColor.whiTe, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextInfo(
              title: 'Sleep',
              textStyle: Style.getStyle(
                  color: AppColor.black,
                  context: context,
                  fontWeight: FontWeight.w500,
                  fontsize: 12)),
          TextInfo(
              title: '8h 20m',
              textStyle: Style.getStyle(
                  color: AppColor.secondColor,
                  context: context,
                  fontWeight: FontWeight.w600,
                  fontsize: 10)),
          Image.asset(
            AppImageAssets.sleep,
            // width: 120,
            height: 120,
          )
        ],
      ),
    );
  }
}
