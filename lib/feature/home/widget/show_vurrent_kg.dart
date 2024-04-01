import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class ShowCurrentKG extends StatelessWidget {
  const ShowCurrentKG({super.key});

  @override
  Widget build(BuildContext context) {
    return             SliverToBoxAdapter(
              child: new CircularPercentIndicator(
                rotateLinearGradient: true,
                radius: 80.0,
                linearGradient: LinearGradient(colors: [
                  Color(0xff4299E1).withOpacity(.5),
                  Color(0xff4299E1),
                ]),
                lineWidth: 20.0,
                percent: .77,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImageAssets.kg,
                      width: 159,
                      height: 19,
                    ),
                    TextInfo(
                        title: ' 49.05kcal',
                        textStyle: Style.getStyle(
                            color: AppColor.black,
                            context: context,
                            fontWeight: FontWeight.w400,
                            fontsize: 20))
                  ],
                ),
              ),
          
            )
        ;
  }
}