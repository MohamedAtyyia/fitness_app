import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/on_boarding/model/on_boarding_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context,
          AppRouterName.onBoarding,
          arguments: OnBoardingModel(
              image: AppImageAssets.onboarding1,
              title: 'Track Your Goal',
              subTitle:
                  'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
              numScreen: 1),
          (route) => false);
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xff90CDF4)),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
            child: Column(
          children: [
            150.hs,
            Image.asset(AppImageAssets.newLogo, width: 200.w, height: 178.h),
            40.hs,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('I',
                    style: Style.getStyle(
                        color: AppColor.secondColor,
                        context: context,
                        fontWeight: FontWeight.w700,
                        fontsize: 36)
                    // style:   Style.style36.copyWith(color: AppColor.secondColor),
                    ),
                Text('FIT',
                    //  style:   Style.style36.copyWith(color: AppColor.secondColor),
                    style: Style.getStyle(
                        color: AppColor.whiTe,
                        context: context,
                        fontWeight: FontWeight.w700,
                        fontsize: 36)
                    // style: Style.getStyle36(context,fontsize:  36)
                    ),
              ],
            ),
            16.hs,
            TextInfo(title: 'Everybody Can Train', textStyle: Style.getStyle(
                        color: AppColor.whiTe,
                        context: context,
                        fontWeight: FontWeight.w700,
                        fontsize: 18)),
            50.hs,
          ],
        )),
      ),
    );
  }
}
