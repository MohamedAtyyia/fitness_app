import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    Key? key,
    required this.title,
    required this.ontap,
    this.prefixImage,
    this.suffixIcon,
  }) : super(key: key);

  final String title;
  final bool? prefixImage;
  final bool? suffixIcon;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 60.h,
        decoration: BoxDecoration(
          color: AppColor.secondColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixImage == null
                ? SizedBox()
                : Image.asset(AppImageAssets.iconLogin,
                    width: 20.h, height: 20.h),
            8.ws,
            Text(
              title,
              style: Style.getStyle(
                  color: AppColor.whiTe,
                  context: context,
                  fontWeight: FontWeight.w600,
                  fontsize: 16),
            ),
            8.ws,
            suffixIcon == null
                ? SizedBox()
                : Icon(
                    FontAwesomeIcons.chevronRight,
                    color: AppColor.whiTe,
                    size: 16,
                  ),
          ],
        ),
      ),
    );
  }
}
