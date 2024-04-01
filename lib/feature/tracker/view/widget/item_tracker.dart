import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class ItemTracker extends StatelessWidget {
  const ItemTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            AppImageAssets.excersise,
            width: 60,
            height: 60,
          ),
          8.ws,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInfo(
                title: 'Forward Arm Circle',
                textStyle: Style.getStyle(
                  color: AppColor.black,
                  context: context,
                  fontWeight: FontWeight.w500,
                  fontsize: 14,
                ),
              ),
              6.hs,
              TextInfo(
                  title: 'Shoulders',
                  textStyle: Style.getStyle(
                      color: AppColor.secondColor.withOpacity(.7),
                      context: context,
                      fontWeight: FontWeight.w500,
                      fontsize: 14)),
                       6.hs,
                       TextInfo(title: '05:00', textStyle: Style.getStyle(color: AppColor.grey,
                        context: context, fontWeight: FontWeight.w500,
                         fontsize: 12)),
            ],
          )
          ,
          Spacer(flex: 1),
            IconButton(onPressed: ()=>Navigator.of(context).pushNamed(AppRouterName.detailsTracket), icon: Icon(FontAwesomeIcons.circleRight,color: AppColor.grey,size: 24,))
        ],
      ),
    );
  }
}
