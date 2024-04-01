import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vitalvibe/core/const/app_color.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isClick = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Switch(
          activeColor:AppColor.whiTe,
          activeTrackColor:  Color(0xff00FF66),
          inactiveTrackColor :AppColor.whiTe,
          inactiveThumbColor: AppColor.grey,
          value: isClick,
          onChanged: (bool  value) {
            print(value);
            isClick = value;
            setState(() {});
          }),
    );
  }
}
