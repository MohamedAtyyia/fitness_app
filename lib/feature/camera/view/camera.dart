import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      AppImageAssets.image_Camera1,
      AppImageAssets.image_Camera2,
      AppImageAssets.image_Camera3,
      AppImageAssets.image_Camera4,
      AppImageAssets.image_Camera5,
      AppImageAssets.image_Camera6,
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          12.hs,
          Row(
            children: [
              Spacer(flex: 1),
              TextInfo(
                  title: 'Progress Photo',
                  textStyle: Style.getStyle(
                      color: AppColor.black,
                      context: context,
                      fontWeight: FontWeight.w700,
                      fontsize: 16)),
              Spacer(flex: 1),
            ],
          ),
          12.hs,
          Image.asset(AppImageAssets.bannar1),
          Container(
            decoration: BoxDecoration(
                color: Color(0xff90CDF4).withOpacity(.7),
                borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 22),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextInfo(
                      title: 'Track Your Progress Each Month\n With Photo',
                      textStyle: Style.getStyle(
                        color: AppColor.black,
                        context: context,
                        fontWeight: FontWeight.w500,
                        fontsize: 12,
                      ),
                    ),
                    Image.asset(AppImageAssets.camera2),
                  ],
                ),
                Spacer(flex: 1),
                Image.asset(AppImageAssets.calender),
              ],
            ),
          ),
          12.hs,

          //         //.............
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
                color: Color(0xff90CDF4).withOpacity(.5),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                TextInfo(
                  title: 'Compare my Photo',
                  textStyle: Style.getStyle(
                    color: AppColor.black,
                    context: context,
                    fontWeight: FontWeight.w500,
                    fontsize: 14,
                  ),
                ),
                Spacer(flex: 1),
                InkWell(
                  onTap: ()=>Navigator.of(context).pushNamed(AppRouterName.comparsation),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.secondColor,
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextInfo(
                      title: 'Compare',
                      textStyle: Style.getStyle(
                        color: AppColor.whiTe,
                        context: context,
                        fontWeight: FontWeight.w400,
                        fontsize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          12.hs,

          /////.....................
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextInfo(
                title: 'Gallery',
                textStyle: Style.getStyle(
                  color: AppColor.black,
                  context: context,
                  fontWeight: FontWeight.w600,
                  fontsize: 16,
                ),
              ),
              InkWell(
                onTap: ()=>Navigator.of(context).pushNamed(AppRouterName.result),
                child: TextInfo(
                  title: 'See more',
                  textStyle: Style.getStyle(
                    color: AppColor.grey,
                    context: context,
                    fontWeight: FontWeight.w500,
                    fontsize: 12,
                  ),
                ),
              ),
            ],
          ),
          //         //...........
          12.hs,

          TextInfo(
              title: '2 June',
              textStyle: Style.getStyle(
                color: AppColor.grey,
                context: context,
                fontWeight: FontWeight.w400,
                fontsize: 12,
              )),
          12.hs,

          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: image.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Image.asset(
                  image[index],
                ),
              ),
            ),
          ),
          12.hs,

          // //............
          TextInfo(
              title: '5 May',
              textStyle: Style.getStyle(
                color: AppColor.grey,
                context: context,
                fontWeight: FontWeight.w400,
                fontsize: 12,
              )),
          12.hs,

          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: image.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Image.asset(
                  image[index],
                ),
              ),
            ),
          ),
          12.hs,
        ],
      ),
    );
  }
}
