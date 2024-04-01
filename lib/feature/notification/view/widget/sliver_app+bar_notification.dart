import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/back_bottom.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class SliverAppBarToNotidication extends StatelessWidget {
  const SliverAppBarToNotidication({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackBottom()
       ,
          Spacer(flex: 1),
          TextInfo(
              title: 'Notification',
              textStyle: Style.getStyle(
                  color: AppColor.black,
                  context: context,
                  fontWeight: FontWeight.w700,
                  fontsize: 16)),
                            Spacer(flex: 1),

        ],
      ),
    );
  }
}


