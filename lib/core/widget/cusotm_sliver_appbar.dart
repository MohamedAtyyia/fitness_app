import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/back_bottom.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key, required this.title, this.color});
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
            BackBottom(),
            Spacer(flex: 1),
            TextInfo(title: title, textStyle: Style.getStyle(color: color ?? AppColor.black,
             context: context, fontWeight: FontWeight.w700,
              fontsize: 16)),
              Spacer(flex: 1)
        ],
      ),
    );
  }
}