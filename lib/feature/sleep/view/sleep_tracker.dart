import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/sleep/view/widget/card_sleep.dart';

class SleepTracker extends StatelessWidget {
  const SleepTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiTe,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Sleep Tracker',
          style: Style.getStyle(
              color: AppColor.black,
              context: context,
              fontWeight: FontWeight.w700,
              fontsize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImageAssets.banner1),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff8AC4E9).withOpacity(.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily Sleep Schedule',
                    style: Style.getStyle(
                      color: AppColor.black,
                      context: context,
                      fontWeight: FontWeight.w500,
                      fontsize: 14,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                    decoration: BoxDecoration(
                        color: AppColor.secondColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'Check',
                      style: Style.getStyle(
                        color: AppColor.whiTe,
                        context: context,
                        fontWeight: FontWeight.w400,
                        fontsize: 12,
                      ),
                    ),
                  )
                ],
              ),
            ),
            TextInfo(
              title: 'Today Schedule',
              textStyle: Style.getStyle(
                color: AppColor.black,
                context: context,
                fontWeight: FontWeight.w600,
                fontsize: 16,
              ),
            ),
            16.hs,
            CardSleep(
                image: AppImageAssets.bed,
                title: 'Bedtime,',
                time: ' 09:00pm',
                durationTim: 'in 6hours 22minutes'),
            CardSleep(
                image: AppImageAssets.alarm,
                title: 'Alarm,',
                time: ' 05:10am',
                durationTim: 'in 14hours 30minutes'),
          ],
        ),
      ),
    );
  }
}
