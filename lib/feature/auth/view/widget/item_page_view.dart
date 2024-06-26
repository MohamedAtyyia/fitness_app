import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class ItemPageView extends StatelessWidget {
  const ItemPageView({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle; 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
          color: Color(0xff90CDF4), borderRadius: BorderRadius.circular(22)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              AppImageAssets.fitnes,
              // width: 220.w,
              height: 214.h,
            ),
          ),
          16.hs,
          TextInfo(
              title: title,
              textStyle:
               Style.getStyle(color: AppColor.whiTe,
                 context: context, fontWeight: FontWeight.w600,
                  fontsize: 14),
              
              
           ),
          SizedBox(
            width: 70.w,
            child: Divider(
              color: AppColor.whiTe,
              thickness: 1,
            ),
          ),
           TextInfo(
              title: subTitle,
              textStyle:
               Style.getStyle(color: AppColor.whiTe,
                 context: context, fontWeight: FontWeight.w600,
                  fontsize: 14),)
        ],
      ),
    );
  }
}
