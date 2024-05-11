import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';

class BackBottom extends StatelessWidget {
  const BackBottom({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context) ,
      child: Container(
        padding: EdgeInsets.all(14),
        // margin: EdgeInsets.only(left: 12),
        child: Icon(
          FontAwesomeIcons.chevronLeft,
          color: AppColor.black,
          size: 16,
        ),
        decoration: BoxDecoration(
            color: color ?? Colors.grey.withOpacity(.3),
            shape: BoxShape.circle),
      ),
    );
  }
}
