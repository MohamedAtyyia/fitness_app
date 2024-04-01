import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class ItemSlieverList extends StatelessWidget {
  const ItemSlieverList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:16 ),

      child: Row(
        children: [
          Image.asset(
            AppImageAssets.legTest,
            width: 90,
            height: 70,
          ),
          8.ws,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInfo(
                  title: 'Chest dip on bench',
                  textStyle: Style.getStyle(
                      color: AppColor.black,
                      context: context,
                      fontWeight: FontWeight.w500,
                      fontsize: 14)),
              4.hs,
              TextInfo(
                  title: '3 sets x 10 reps',
                  textStyle: Style.getStyle(
                      color: AppColor.grey,
                      context: context,
                      fontWeight: FontWeight.w400,
                      fontsize: 12))
            ],
          ),
          Spacer(flex: 1),
          IconButton(
              onPressed: ()=>Navigator.of(context).pushNamed(AppRouterName.detailsTracket),
              icon: Icon(
                FontAwesomeIcons.circleRight,
                color: AppColor.grey,
                size: 18,
              ))
        ],
      ),
    );
  }
}
