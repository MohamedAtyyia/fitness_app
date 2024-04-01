import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';

class AuthWithSocial extends StatelessWidget {
  const AuthWithSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildAuthSocila(image: AppImageAssets.facebook, onTap: () {}),
        12.ws,
        buildAuthSocila(image: AppImageAssets.google, onTap: () {}),
      ],
    );
  }

  Widget buildAuthSocila({required String image, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Image.asset(image),
        // padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
        width: 50.w,
        height: 50.h,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffDDDADA)),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
