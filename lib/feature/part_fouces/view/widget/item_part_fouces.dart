import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/part_fouces/view/part_fouces.dart';

class ItemPartFouces extends StatelessWidget {
  const ItemPartFouces({super.key, required this.partFoucesModel});
  final PartFoucesModel partFoucesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInfo(
                  title: partFoucesModel.title,
                  textStyle: Style.getStyle(
                      color: AppColor.black,
                      context: context,
                      fontWeight: FontWeight.w500,
                      fontsize: 15)),
              6.hs,
              TextInfo(
                  title: partFoucesModel.supTitle,
                  textStyle: Style.getStyle(
                      color: AppColor.black,
                      context: context,
                      fontWeight: FontWeight.w400,
                      fontsize: 12)),
              6.hs,
              InkWell(
                onTap: () => Navigator.of(context)
                    .pushNamed(AppRouterName.detailsPartFouces),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColor.whiTe,
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: TextInfo(
                      title: 'View more',
                      textStyle: Style.getStyle(
                          color: Color(0xff63B3ED),
                          context: context,
                          fontWeight: FontWeight.w500,
                          fontsize: 10)),
                ),
              )
            ],
          ),
          Image.asset(
            partFoucesModel.image,
            width: 90.w,
            height: 90.h,
          )
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Color(0xff63B3ED).withOpacity(.4)),
    );
  }
}
