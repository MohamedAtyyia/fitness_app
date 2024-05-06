import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class ItemFeedBack extends StatelessWidget {
  const ItemFeedBack({super.key, required this.title, required this.isClic});
  final String title;
  final bool isClic;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      duration: Duration(milliseconds: 600),
      curve: Curves.easeInOutCubicEmphasized,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              width: 1.2,
              color: isClic == true ?Color(0xff14B8A6) : AppColor.grey)),
      child: Row(
        children: [
          TextInfo(
              title: title,
              textStyle: Style.getStyle(
                  color: AppColor.black,
                  context: context,
                  fontWeight: FontWeight.w700,
                  fontsize: 14)),
          Spacer(flex: 1),
          isClic == true
              ? AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOutCubicEmphasized,
                  decoration: BoxDecoration(
                      color: Color(0xff14B8A6), shape: BoxShape.circle),
                  child: Icon(
                    FontAwesomeIcons.check,
                    color: AppColor.whiTe,
                  ),
                )
              : AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOutCubicEmphasized,
                  decoration: BoxDecoration(
                      color: AppColor.whiTe,
                      border: Border.all(color: AppColor.grey, width: 1),
                      shape: BoxShape.circle),
                  padding: EdgeInsets.all(12),
                )
        ],
      ),
    );
  }
}
