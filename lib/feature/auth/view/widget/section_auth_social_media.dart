
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/auth/view/widget/auth_with_socila.dart';

class SectionAuthBySocialMedai extends StatelessWidget {
  const SectionAuthBySocialMedai(
      {super.key, required this.title, required this.subTitle, required this.onTap});
  final String title;
  final String subTitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildDivider(context),
        12.hs,
        AuthWithSocial(),
        12.hs,
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextInfo(
              title: title,
              textStyle:
               Style.getStyle(color: AppColor.black,
                 context: context, fontWeight: FontWeight.w400,
                  fontsize: 12),
              
              
            ),
          GestureDetector(
            onTap:onTap ,
            child: TextInfo(
                title: subTitle,
                textStyle:
                
                 Style.getStyle(color: AppColor.secondColor,
                 context: context, fontWeight: FontWeight.w400,
                  fontsize: 12),
               ),
          )
        ]),
        12.hs
      ],
    );
  }

  Widget buildDivider(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xffDDDADA),
            thickness: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TextInfo(
              title: 'Or',
              textStyle: Style.getStyle(color: AppColor.black,
                 context: context, fontWeight: FontWeight.w400,
                  fontsize: 12),
              
              
              ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xffDDDADA),
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
