import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/on_boarding/model/on_boarding_model.dart';

class OnboadrfirstScreen extends StatelessWidget {
  const OnboadrfirstScreen({super.key, required this.onBoardingModel});
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          if (onBoardingModel.numScreen == 1) {
            Navigator.pushNamed(
              context,
              AppRouterName.onBoarding,
              arguments: OnBoardingModel(
                  image: AppImageAssets.onboarding2,
                  title: 'Get Burn',
                  subTitle:
                      'Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever',
                  numScreen: 2),
            );
          } else if (onBoardingModel.numScreen == 2) {
            Navigator.pushNamed(
              context,
              AppRouterName.onBoarding,
              arguments: OnBoardingModel(
                  image: AppImageAssets.onboarding3,
                  title: 'Eat Well',
                  subTitle:
                      'Let\'s start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun',
                  numScreen: 3),
            );
          }
           else if (onBoardingModel.numScreen == 3) {
            Navigator.pushNamed(
              context,
              AppRouterName.onBoarding,
              arguments: OnBoardingModel(
                  image: AppImageAssets.onboarding4,
                  title: 'Improve Sleep  Quality',
                  subTitle:
                      'Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning',
                  numScreen: 4),
            );
          }
          else {
            Navigator.of(context).pushNamed(AppRouterName.login);
          }
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: AppColor.secondColor),
          child: Icon(
            FontAwesomeIcons.chevronRight,
            color: AppColor.whiTe,
            size: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              onBoardingModel.image,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            50.hs,
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: TextInfo(
                    title: onBoardingModel.title,
                    textStyle: //Style.style24
                        Style.getStyle(
                            color: AppColor.black,
                            context: context,
                            fontWeight: FontWeight.w700,
                            fontsize: 24)

                    // Style.style24
                    )),
            8.hs,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: TextInfo(
                  title: onBoardingModel.subTitle,
                  textStyle: Style.getStyle(
                      color: Color(0xffB6B4C2),
                      context: context,
                      fontWeight: FontWeight.w400,
                      fontsize: 18)),
            ),
          ],
        ),
      ),
    );
  }


}
