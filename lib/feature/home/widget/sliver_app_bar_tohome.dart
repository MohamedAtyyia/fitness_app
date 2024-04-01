import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class SliverAppBarToHome extends StatelessWidget {
  const SliverAppBarToHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: InkWell(
            onTap: ()=>Navigator.of(context).pushNamed(AppRouterName.notification),
            child: Icon(
              FontAwesomeIcons.bell,
              size: 24,
              color: AppColor.black,
            ),
          ),
        )
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextInfo(
            title: 'Welcome Back,',
            textStyle: Style.getStyle(
                color: AppColor.grey,
                context: context,
                fontWeight: FontWeight.w400,
                fontsize: 12),
          ),
          4.hs,
          TextInfo(
            title: 'Hi, Masi Ramezanzade',
            textStyle: Style.getStyle(
                color: AppColor.black,
                context: context,
                fontWeight: FontWeight.w700,
                fontsize: 20),
          ),
        ],
      ),
    );
  }
}
