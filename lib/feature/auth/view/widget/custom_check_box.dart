import 'package:flutter/material.dart';

import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class CustomChckBox extends StatefulWidget {
  const CustomChckBox({super.key});

  @override
  State<CustomChckBox> createState() => _CustomChckBoxState();
}

class _CustomChckBoxState extends State<CustomChckBox> {
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isClick,
            // activeColor: AppColor.ornage,
            onChanged: (t) {
              isClick = !isClick;
              setState(() {});
            }),
        Expanded(
          child: Wrap(
            direction: Axis.horizontal,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextInfo(
                title: 'By continuing you accept our',
                textStyle: Style.getStyle(
                    color: Color(0xff7B6F72),
                    context: context,
                    fontWeight: FontWeight.w400,
                    fontsize: 12),
              ),
              TextInfo(
                title: 'Privacy Policy',
                textStyle: Style.getStyle(
                    color: Color(0xff7B6F72),
                    context: context,
                    fontWeight: FontWeight.w400,
                    fontsize: 12),
              ),
              TextInfo(
                title: 'and',
                textStyle: Style.getStyle(
                    color: Color(0xff7B6F72),
                    context: context,
                    fontWeight: FontWeight.w400,
                    fontsize: 12),
              ),
              TextInfo(
                title: 'Term of Use',
                textStyle: Style.getStyle(
                    color: Color(0xff7B6F72),
                    context: context,
                    fontWeight: FontWeight.w400,
                    fontsize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
