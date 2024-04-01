import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class CardTracker extends StatelessWidget {
  const CardTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
      decoration: BoxDecoration(
          color: Color(0xff90CDF4).withOpacity(.4),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextInfo(
            title: 'Daily Workout Schedule',
            textStyle: Style.getStyle(
                color: AppColor.black,
                context: context,
                fontWeight: FontWeight.w500,
                fontsize: 14),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
            decoration: BoxDecoration(
              color: AppColor.secondColor,
              borderRadius: BorderRadius.circular(30)
            ),
            child: TextInfo(
              title: 'Check',
              textStyle: Style.getStyle(
                  color: AppColor.whiTe,
                  context: context,
                  fontWeight: FontWeight.w400,
                  fontsize: 12),
            ),
          )
        ],
      ),
    );
  }
}
