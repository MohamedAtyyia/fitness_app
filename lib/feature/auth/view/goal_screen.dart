import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/custom_bottom.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/auth/view/widget/custom_cursoul_slider.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      children: [
        50.hs,
        TextInfo(
            title: 'What is your goal ?',
            textStyle: Style.getStyle(
                color: AppColor.black,
                context: context,
                fontWeight: FontWeight.w600,
                fontsize: 20)),
        16.hs,
        TextInfo(
          title: 'It will help us to choose a best',
          textStyle: Style.getStyle(
              color: Color(0xff7B6F72),
              context: context,
              fontWeight: FontWeight.w400,
              fontsize: 12),
        ),
        TextInfo(
          title: 'program for you',
          textStyle: Style.getStyle(
              color: Color(0xff7B6F72),
              context: context,
              fontWeight: FontWeight.w400,
              fontsize: 12),
        ),
        16.hs,
        CustomCursulSlider(),
        Spacer(flex: 1),
        CustomBottom(
            title: 'Confirm',
            ontap: () {
              Navigator.of(context).pushNamed(AppRouterName.shapeBody);
            }),
        30.hs,
      ],
    ),
          ),
        );
  }
}
