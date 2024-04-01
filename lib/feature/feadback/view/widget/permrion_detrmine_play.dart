import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/feadback/view/widget/item_feed_back.dart';

class PermsionDetrminePlay extends StatefulWidget {
  const PermsionDetrminePlay({super.key});

  @override
  State<PermsionDetrminePlay> createState() => _PermsionDetrminePlayState();
}

class _PermsionDetrminePlayState extends State<PermsionDetrminePlay> {
  bool isTrue = false;
  bool isFalse = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        8.hs,
        TextInfo(
          title:
                  'The app allows for customization of workout plans based on individual fitness goals?',
          textStyle: Style.getStyle(
              color: AppColor.grey,
              context: context,
              fontWeight: FontWeight.w400,
              fontsize: 14),
        ),
        InkWell(
          splashColor: AppColor.whiTe,
            onTap: () {
              if (!isTrue) {
                isTrue = true;
                isFalse = false;
                setState(() {});
              }
            },
            child: ItemFeedBack(title: 'True', isClic: isTrue)),
        InkWell(splashColor: AppColor.whiTe,
            onTap: () {
              if (!isFalse) {
                isTrue = false;
                isFalse = true;
                setState(() {});
              }
            },
            child: ItemFeedBack(title: 'False', isClic: isFalse))
      ],
    );
  }
}
