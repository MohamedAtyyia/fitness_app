import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class ShowAmountWater extends StatelessWidget {
  const ShowAmountWater({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      decoration: BoxDecoration(
              color: AppColor.whiTe,

        borderRadius: BorderRadius.circular(12)),
      height: 280.h,
      child: Row(
        children: [
          showProgressBar(),
          12.ws,
          Column(    
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              TextInfo(
                title: 'Water Intake',
                textStyle: Style.getStyle(
                  color: AppColor.black,
                  context: context,
                  fontWeight: FontWeight.w500,
                  fontsize: 12,
                ),
              ),
              TextInfo(
                title: '4 Liters',
                textStyle: Style.getStyle(
                  color: Color(0xff3182CE),
                  context: context,
                  fontWeight: FontWeight.w600,
                  fontsize: 14,
                ),
              ),
              TextInfo(
                title: 'Real time updates',
                textStyle: Style.getStyle(
                  color: AppColor.grey,
                  context: context,
                  fontWeight: FontWeight.w400,
                  fontsize: 10,
                ),
              ),
          
            ],
          )
        ],
      ),
    );
  }

  Widget showProgressBar() {
    return SimpleAnimationProgressBar(
      height: 260.h,
      width: 30,
      backgroundColor: Color(0xffF7F8F8),
      foregrondColor: Color(0xff90CDF4),
      ratio: 0.9,
      direction: Axis.vertical,
      curve: Curves.fastLinearToSlowEaseIn,
      duration: const Duration(seconds: 3),
      // borderRadius: BorderRadius.circular(10),
    );
  }
}

