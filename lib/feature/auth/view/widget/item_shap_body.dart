import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class ItemShapBody extends StatelessWidget {
  const ItemShapBody({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(AppRouterName.homescreen),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 22,vertical: 8),
        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextInfo(
                title: '3-4%',
                textStyle: 
                
                 Style.getStyle(color: AppColor.black,
                   context: context, fontWeight: FontWeight.w500,
                    fontsize: 12),
               ),
            Image.asset(AppImageAssets.shapeBody)
          ],
        ),
        decoration: BoxDecoration(
            color: Color(0xff63B3ED).withOpacity(.4), borderRadius: BorderRadius.circular(22)),
      ),
    );
  }
}
