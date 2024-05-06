import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/tracker/view/widget/show_description.dart';

class DetailsTracker extends StatelessWidget {
  const DetailsTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 6.hs,
            Center(
              child: TextInfo(
                title: 'Jumping Jack',
                textStyle: Style.getStyle(
                    color: AppColor.black,
                    context: context,
                    fontWeight: FontWeight.w700,
                    fontsize: 16)),
            ),
                          12.hs,
    
          Center(
            child: Container(
              width: 315,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColor.secondColor.withOpacity(.4)),
            ),
          ),
        
          20.hs,
          TextInfo(
              title: 'Descriptions',
              textStyle: Style.getStyle(
                  color: AppColor.black,
                  context: context,
                  fontWeight: FontWeight.w700,
                  fontsize: 16)),
          20.hs,
          ShowDescription(),
                     20.hs,
    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextInfo(
                  title: 'How To Do It',
                  textStyle: Style.getStyle(
                      color: AppColor.black,
                      context: context,
                      fontWeight: FontWeight.w600,
                      fontsize: 16)),
              TextInfo(
                  title: '4 Steps',
                  textStyle: Style.getStyle(
                      color: AppColor.grey,
                      context: context,
                      fontWeight: FontWeight.w500,
                      fontsize: 12))
            ],
          ),
          20.hs,
          showSteps(number: '01', context: context),
          12.hs,
          showSteps(number: '01', context: context),
          12.hs,
          showSteps(number: '01', context: context),
          12.hs,
          showSteps(number: '01', context: context),
        ],
      ),
    ),
          ),
        );
  }

  Widget showSteps({required String number, required BuildContext context}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInfo(
            title: number,
            textStyle: Style.getStyle(
                color: AppColor.secondColor,
                context: context,
                fontWeight: FontWeight.w400,
                fontsize: 14)),
        12.ws,
        CircleAvatar(
          radius: 10,
          backgroundColor: AppColor.secondColor,
          child: CircleAvatar(
            radius: 9,
            backgroundColor: AppColor.whiTe,
            child: CircleAvatar(
              radius: 6,
              backgroundColor: AppColor.secondColor,
            ),
          ),
        ),
        12.ws,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInfo(
                title: 'Spread Your Arms',
                textStyle: Style.getStyle(
                    color: AppColor.black,
                    context: context,
                    fontWeight: FontWeight.w400,
                    fontsize: 14)),
            4.hs,
            SizedBox(
                width: MediaQuery.sizeOf(context).width * .7,
                child: Text(
                    'To make the gestures feel more relaxed, stretch your arms as you start this movement. No bending of hands.o make the gestures feel more relaxed, stretch your arms as you start this movement. No bending of hands.',
                    maxLines: 6,
                    style: Style.getStyle(
                        color: AppColor.grey,
                        context: context,
                        fontWeight: FontWeight.w400,
                        fontsize: 12))),
          ],
        )
      ],
    );
  }
}
