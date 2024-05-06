import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/feature/settings/view/widget/card_setttins.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key, this.isShwoScafold});
  final bool? isShwoScafold;
  @override
  Widget build(BuildContext context) {
    return isShwoScafold == null ?  Scaffold(
      backgroundColor: AppColor.whiTe,
      body: _showCustomScrolView(),
    ): _showCustomScrolView();
  }

  Widget _showCustomScrolView() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                AppImageAssets.fitnesSettings,
                height: 230,
              ),
            ),
          ),
          CardSetting()
        ],
      ),
    );
  }
}
