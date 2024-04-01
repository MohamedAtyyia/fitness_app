
import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/style/style.dart';

class ShowDescription extends StatefulWidget {
  const ShowDescription({super.key});

  @override
  State<ShowDescription> createState() => _ShowDescriptionState();
}

class _ShowDescriptionState extends State<ShowDescription> {
  bool maxLines = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        maxLines = !maxLines;
        setState(() {});
      },
      child: Text(
        'A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide ',
        maxLines: maxLines == false ? 2 : 20,
        style: Style.getStyle(
            color: AppColor.grey,
            context: context,
            fontWeight: FontWeight.w400,
            fontsize: 12),
      ),
    );
  }
}
