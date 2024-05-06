
import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/settings/view/widget/custom_sweitch.dart';

class CardSleep extends StatelessWidget {
  const CardSleep(
      {super.key,
      required this.image,
      required this.title,
      required this.time,
      required this.durationTim});
  final String image;
  final String title;
  final String time;
  final String durationTim;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // لون الظل
            spreadRadius: 2, // انحدار الظل
            blurRadius: 5, // انحراف الظل
            offset: Offset(0, 2), // إزاحة الظل (الأفقي، العمودي)
          ),
        ],
        color: AppColor.whiTe,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 30,
            height: 30,
          ),
          12.ws,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: Style.getStyle(
                        color: AppColor.black,
                        context: context,
                        fontWeight: FontWeight.w400,
                        fontsize: 12),
                  ),
                  TextSpan(
                    text: time,
                    style: Style.getStyle(
                        color: AppColor.grey,
                        context: context,
                        fontWeight: FontWeight.w400,
                        fontsize: 12),
                  ),
                ],
              )),
              TextInfo(
                title: durationTim,
                textStyle: Style.getStyle(
                  color: AppColor.grey,
                  context: context,
                  fontWeight: FontWeight.w500,
                  fontsize: 16,
                ),
              )
            ],
          ),
          Spacer(flex: 1),
          CustomSwitch(),
        ],
      ),
    );
  }
}
