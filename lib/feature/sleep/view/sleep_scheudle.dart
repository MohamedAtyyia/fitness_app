import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/add_schdule/view/widget/show_date.dart';
import 'package:vitalvibe/feature/sleep/view/widget/card_sleep.dart';

class SleepSchedule extends StatelessWidget {
  const SleepSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
              onTap: ()=>Navigator.of(context).pushNamed(AppRouterName.addAlarm),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: AppColor.secondColor,
          child: Icon(FontAwesomeIcons.plus,color: AppColor.whiTe,size: 16),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColor.whiTe,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Sleep Schedule',
          style: Style.getStyle(
              color: AppColor.black,
              context: context,
              fontWeight: FontWeight.w700,
              fontsize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(AppImageAssets.banner2)),
              TextInfo(
                title: 'Your Schedule',
                textStyle: Style.getStyle(
                  color: AppColor.black,
                  context: context,
                  fontWeight: FontWeight.w600,
                  fontsize: 16,
                ),
              ),
              12.hs,
              Showdate(),
              12.hs,
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff8AC4E9).withOpacity(.5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextInfo(
                      title: 'You will get 8hours 10minutes\n for tonight',
                      textStyle: Style.getStyle(
                        color: AppColor.black,
                        context: context,
                        fontWeight: FontWeight.w400,
                        fontsize: 12,
                      ),
                    ),
                    12.hs,
                    showProgressBar(context: context)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget showProgressBar({required BuildContext context}) {
    return Row(
      children: [
        SimpleAnimationProgressBar(
          borderRadius: BorderRadius.circular(12),
          height: 20.h,
          width: MediaQuery.sizeOf(context).width * .7,
          backgroundColor: Color(0xffF7F8F8),
          foregrondColor: Color(0xff90CDF4),
          ratio: 0.9,
          direction: Axis.horizontal,
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(seconds: 3),
          // borderRadius: BorderRadius.circular(10),
        )
      ],
    );
  }
}
