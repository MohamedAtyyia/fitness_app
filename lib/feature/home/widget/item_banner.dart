
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class ItemBanner extends StatelessWidget {
  const ItemBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12,right: 8),
        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff90CDF4),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                ClipRRect(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(30)),
                    child: Image.asset(AppImageAssets.circle)),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      50.hs,
                      TextInfo(
                          title: 'Today, 8 Jul',
                          textStyle: Style.getStyle(
                              color: AppColor.whiTe,
                              context: context,
                              fontWeight: FontWeight.w400,
                              fontsize: 14)),
                      TextInfo(
                          title: '1883 Kcal',
                          textStyle: Style.getStyle(
                              color: AppColor.whiTe,
                              context: context,
                              fontWeight: FontWeight.w700,
                              fontsize: 24))
                    ],
                  ),
                )
              ],
            ),
          Spacer(flex: 1),
            Image.asset(
              AppImageAssets.fitnesBanner,
              height: 250,
            ),
          ],
        )
        //  Stack(
        //   alignment: Alignment.bottomLeft,
        //   children: [
    
        //     // ClipRRect(
        //     //     borderRadius:
        //     //         BorderRadius.only(bottomLeft: Radius.circular(30)),
        //     //     child: Image.asset(AppImageAssets.circle)),
    
        //     Padding(
        //       padding: const EdgeInsets.only(left: 12),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           50.hs,
        //           TextInfo(
        //               title: 'Today, 8 Jul',
        //               textStyle: Style.getStyle(
        //                   color: AppColor.whiTe,
        //                   context: context,
        //                   fontWeight: FontWeight.w400,
        //                   fontsize: 14)),
        //           TextInfo(
        //               title: '1883 Kcal',
        //               textStyle: Style.getStyle(
        //                   color: AppColor.whiTe,
        //                   context: context,
        //                   fontWeight: FontWeight.w700,
        //                   fontsize: 24))
        //         ],
        //       ),
        //     )
    
        //   ],
    
        // ),
        );
  }
}
