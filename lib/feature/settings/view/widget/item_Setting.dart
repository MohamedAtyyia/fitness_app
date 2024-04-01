
import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/settings/view/widget/custom_sweitch.dart';

class ItemSettins extends StatelessWidget {
  const ItemSettins(
      {super.key,
      required this.title,
      required this.image,
      required this.onTap, this.isNotification});
  final String title;
  final String image;
  final VoidCallback onTap;
  final bool? isNotification;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(image),
              12.ws,
              TextInfo(
                  title: title,
                  textStyle: Style.getStyle(
                      color: AppColor.grey,
                      context: context,
                      fontWeight: FontWeight.w400,
                      fontsize: 16)),
      
                      Spacer(flex: 1),
                      isNotification == null ? SizedBox() : 
                      CustomSwitch(),
                      
            ],
          ),
        4.hs,
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width* .7,
            child: Divider(
              color: AppColor.grey,
              thickness: 1,
            ),
          ),
        )
        ],
      ),
    );
    
    //  InkWell(
    //   onTap: onTap,
    //   child: Container(
    //     margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    //     decoration: BoxDecoration(
    //       border: Border(
    //         bottom: BorderSide(
    //           // استخدمت BorderSide لتحديد خصائص الحد السفلي
    //           color: AppColor.grey, // تحديد لون الحد باللون الأحمر
    //           width: 1.0, // تحديد سمك الحد
    //         ),
    //       ),
    //     ),
    //     child: SizedBox(
    //       width: 375.w,
    //       child: Row(
    //         children: [
    //           Image.asset(image),
    //           12.ws,
    //           TextInfo(
    //               title: title,
    //               textStyle: Style.getStyle(
    //                   color: AppColor.grey,
    //                   context: context,
    //                   fontWeight: FontWeight.w400,
    //                   fontsize: 16))
    //         ],
    //       ),
    //     ),
    
    //   ),
    // );
 
 
  }
}
