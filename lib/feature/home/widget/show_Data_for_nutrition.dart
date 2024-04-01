
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class ShowDataForNutrition extends StatelessWidget {
  const ShowDataForNutrition({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            showData(
              context: context,
              colo: Color(0xff47CACA),
              title: '11.83g',
              subTitle: 'Carb',
            ),
            4.ws,
            showData(
              context: context,
              colo: Color(0xff484848),
              title: '0.35g',
              subTitle: 'Protein',
            ),
            4.ws,
            showData(
              context: context,
              colo: Color(0xff47CACA),
              title: '	0.35g',
              subTitle: 'Fat',
            ),
          ],
        ),
      ),
    );
  }

  Widget showData(
      {required BuildContext context,
      required Color colo,
      required String title,
      required String subTitle}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularPercentIndicator(
          radius: 20.0,
          lineWidth: 5.0,
          progressColor: colo,
          percent: .77,
        ),
        8.ws,
        Column(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextInfo(
                      title: title,
                      textStyle: Style.getStyle(
                          color: AppColor.black,
                          context: context,
                          fontWeight: FontWeight.w400,
                          fontsize: 18)),
                  TextInfo(
                      title: subTitle,
                      textStyle: Style.getStyle(
                          color: AppColor.grey,
                          context: context,
                          fontWeight: FontWeight.w400,
                          fontsize: 14))
                ]),
          ],
        )
      ],
    );
  }
}
