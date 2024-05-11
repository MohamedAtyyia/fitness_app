import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/back_bottom.dart';
import 'package:vitalvibe/core/widget/custom_bottom.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiTe,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: BackBottom(),
        ),
        centerTitle: true,
        title: TextInfo(
          title: 'Result',
          textStyle: Style.getStyle(
            color: AppColor.black,
            context: context,
            fontWeight: FontWeight.w600,
            fontsize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              12.hs,
              _buiildItem(
                  context: context,
                  title: 'Front Facing',
                  image1: AppImageAssets.image_Camera5,
                  image2: AppImageAssets.image_Camera7),
              _buiildItem(
                  context: context,
                  title: 'Back Facing',
                  image1: AppImageAssets.image_Camera3,
                  image2: AppImageAssets.image_Camera8),
              _buiildItem(
                  context: context,
                  title: 'Left Facing',
                   image1: AppImageAssets.image_Camera4,
                  image2: AppImageAssets.image_Camera6),
              _buiildItem(
                  context: context,
                  title: 'Right Facing',
                  image1: AppImageAssets.image_Camera1,
                  image2: AppImageAssets.image_Camera2),
              12.hs,
              CustomBottom(
                title: 'Back to Home',
                ontap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRouterName.homescreen, (route) => false),
              ),
                            12.hs,

            ],
          ),
        ),
      ),
    );
  }

  Widget _buiildItem(
      {required BuildContext context,
      required String title,
      required String image1,
      required String image2}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: InkWell(
        onTap: ()=>Navigator.of(context).pushNamed(AppRouterName.detailsCamera),
        child: Column(
        
        
          children: [
            Text(
              title,
              style: Style.getStyle(
                  color: AppColor.grey,
                  context: context,
                  fontWeight: FontWeight.w500,
                  fontsize: 14),
            ),
            8.hs,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image1),
                12.ws,
                Image.asset(image2),
              ],
            )
          ],
        ),
      ),
    );
  }
}
