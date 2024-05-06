import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';

class ShowCalender extends StatelessWidget {
  const ShowCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      Icon(FontAwesomeIcons.calendar,size: 24,
      ),
      8.ws,
      Text('Thu, 27 May 2022',style: Style.getStyle(color: AppColor.grey.withOpacity(.7),
       context: context, fontWeight: FontWeight.w400, fontsize: 14),)
    ]);
  }
}