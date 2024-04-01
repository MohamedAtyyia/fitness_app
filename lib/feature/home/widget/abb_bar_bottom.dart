import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vitalvibe/core/const/app_color.dart';

import '../../../core/const/app_image_asets.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 60.h,
      color: AppColor.whiTe,
      surfaceTintColor: AppColor.secondColor,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // IconButton(onPressed: (){}, icon: Icon(Icons.home)),

          Image.asset(AppImageAssets.home),

          Spacer(flex: 1),
          Image.asset(AppImageAssets.camera),

          Spacer(flex: 2),

          Image.asset(AppImageAssets.credit),

          Spacer(flex: 1),

          Image.asset(AppImageAssets.profile),
        ],
      ),
    );
  }
}
