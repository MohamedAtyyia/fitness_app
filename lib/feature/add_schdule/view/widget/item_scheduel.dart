import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/style/style.dart';

class ShowItemSchedule extends StatelessWidget {
  const ShowItemSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xffE0F0FB)
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _showText(context,'Enter workout name'),
          _showText(context,'Enter difficulty level'),
          _showText(context,'Enter Custom Repetitions'),
          _showText(context,'Enter Custom Weights'),
          _showText(context,'Write your notes here'),
        ],
      ),
    );
  }

  Padding _showText(BuildContext context, String title ) {
    return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(title,style: Style.getStyle(color: AppColor.black,
           context: context, fontWeight: FontWeight.w500, fontsize: 17),),
        );
  }
}
