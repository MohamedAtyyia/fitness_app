import 'package:flutter/material.dart';

abstract class Style {
  static TextStyle getStyle(
      {required Color? color,
      required BuildContext context,
      required FontWeight? fontWeight,
      required double fontsize}) {
    return TextStyle(
        fontWeight: fontWeight ,
        fontSize: fontSizeResponsiev(context, fontsize),
        fontFamily: 'Poppins',
        color: color ,
        overflow: TextOverflow.ellipsis

        //  color: AppColor.whiTe,
        );
  }

  // static TextStyle style14 = TextStyle(
  //     fontFamily: 'Poppins',
  //     fontWeight: FontWeight.w400,
  //     fontSize: 14.sp,
  //     color: const Color(0xff7B6F72));
  // //
  // static TextStyle style18 = TextStyle(
  //     fontFamily: 'Poppins',
  //     fontWeight: FontWeight.w400,
  //     fontSize: 18.sp,
  //     color: AppColor.whiTe);

  // ///
  // static TextStyle style12 = TextStyle(
  //     fontFamily: 'Poppins',
  //     fontWeight: FontWeight.w400,
  //     fontSize: 12.sp,
  //     color: const Color(0xff7B6F72));

  // ///

  // static TextStyle style20 = TextStyle(
  //   fontFamily: 'Poppins',
  //   fontWeight: FontWeight.w700,
  //   fontSize: 20.sp,
  //   color: AppColor.black,
  // );

  // ///

  // static TextStyle style16White = TextStyle(
  //   fontFamily: 'Poppins',
  //   fontWeight: FontWeight.w700,
  //   fontSize: 15.sp,
  //   color: AppColor.whiTe,
  // );

  // ///

  // static TextStyle style24 = TextStyle(
  //   fontFamily: 'Poppins',
  //   fontWeight: FontWeight.w700,
  //   fontSize: 24.sp,
  //   color: AppColor.black,
  // );

  // ///

  // static TextStyle style16Black = TextStyle(
  //   fontWeight: FontWeight.w700,
  //   fontFamily: 'Poppins',
  //   fontSize: 15.sp,
  //   color: AppColor.black,
  // );

  static double fontSizeResponsiev(BuildContext context, double fontSize) {
    double scaleFactor = getScaleFactor(MediaQuery.sizeOf(context).width);
    double font = fontSize * scaleFactor;
    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.2;
    // print(fontSize);
    // print('lowerLimit>>>>>>>>>>>>>$lowerLimit');
    // print('upperLimit>>>>>>>>>>>>>$upperLimit');
    return font.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(
    double width,
  ) {
    if (width < 600) {
      return width / 400;
    } else if (width < 900) {
      return width / 700;
    } else {
      return width / 1000;
    }
  }

  ///
}
