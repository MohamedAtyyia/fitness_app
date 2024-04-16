import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/feature/settings/view/widget/card_setttins.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.whiTe,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height * .5,
          
          
            flexibleSpace: FlexibleSpaceBar(
              // expandedTitleScale: 0,
              title: Image.asset(
                AppImageAssets.fitnesSettings,
                // height: 230,
              ),
            ),
          ),

          // SliverToBoxAdapter(

          //   child: Image.asset(
          //     AppImageAssets.fitnesSettings,
          //     height: 230,
          //   ),
          // ),
          CardSetting()
        ],
      ),
    ));
  }
}
