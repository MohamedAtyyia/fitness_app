import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/back_bottom.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class SliverToBoxAdaptertoTracker extends StatelessWidget {
  const SliverToBoxAdaptertoTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return   SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: Row(
                children: [
                  BackBottom(
                    color: AppColor.whiTe,
                  ),
                  Spacer(flex: 1),
                  TextInfo(
                      title: 'Workout Tracker',
                      textStyle: Style.getStyle(
                          color: AppColor.whiTe,
                          context: context,
                          fontWeight: FontWeight.w700,
                          fontsize: 16)),
                  Spacer(flex: 1),
                ],
              ),
            ),
          );
  }
}