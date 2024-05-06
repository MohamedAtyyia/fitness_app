import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/settings/view/widget/custom_sweitch.dart';

class AddAlarm extends StatelessWidget {
  const AddAlarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiTe,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Add Alarm',
          style: Style.getStyle(
              color: AppColor.black,
              context: context,
              fontWeight: FontWeight.w700,
              fontsize: 20),
        ),
      ),
      body: Column(
        children: [
          ItemAlarm(
              isShowIcon: false,
              title: 'Bedtime',
              subTitle: '09:00 PM',
              prefixIcon: FontAwesomeIcons.car),
          ItemAlarm(
              isShowIcon: false,
              title: 'Hours of sleep',
              subTitle: '8hours 30minutes',
              prefixIcon: Icons.alarm),
          ItemAlarm(
              isShowIcon: false,
              title: 'Repeat',
              subTitle: 'Mon to Fri',
              prefixIcon: FontAwesomeIcons.repeat),
          ItemAlarm(
              isShowIcon: true ,
              title: 'vibrate When Alarm Sound',
              subTitle: '',
              vertical: 0,
              prefixIcon: Icons.vibration),
        ],
      ),
    );
  }
}

class ItemAlarm extends StatelessWidget {
  const ItemAlarm({
    super.key,
    required this.title,
    required this.subTitle,
    required this.prefixIcon,
    required this.isShowIcon, this.vertical,
  });
  final String title;
  final String subTitle;
  final IconData prefixIcon;
  final bool isShowIcon;
  final double? vertical;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(prefixIcon, size: 12, color: AppColor.grey.withOpacity(.6)),
          12.ws,
          TextInfo(
            title: title,
            textStyle: Style.getStyle(
              color: AppColor.grey,
              context: context,
              fontWeight: FontWeight.w400,
              fontsize: 12,
            ),
          ),
          Spacer(flex: 1),
          TextInfo(
            title: subTitle,
            textStyle: Style.getStyle(
              color: AppColor.grey,
              context: context,
              fontWeight: FontWeight.w400,
              fontsize: 10,
            ),
          ),
          12.ws,
          isShowIcon == true
              ? CustomSwitch()
              : Icon(FontAwesomeIcons.chevronRight,
                  size: 12,
                  color: AppColor.grey
                      .withOpacity(.6)), // استدعاء CustomSwitch كعنصر Widget
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 6, vertical:vertical ??  16),
      decoration: BoxDecoration(
          color:Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
