import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';

class DetailsCamera extends StatelessWidget {
  const DetailsCamera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * .8,
            width: double.infinity,
            color: Color(0xff90CDF4).withOpacity(.7),
            child: Column(
              children: [
                40.hs,
                Image.asset(AppImageAssets.photo1),
                20.hs,
                Container(
                  height: 68,
                  width: 295,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: AppColor.whiTe,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AppImageAssets.cameraz,
                          width: 20, height: 20),
                      CircleAvatar(
                        backgroundColor: AppColor.secondColor,
                        radius: 24,
                        child: Image.asset(
                          AppImageAssets.camera,
                          width: 18,
                          color: AppColor.whiTe,
                          height: 16,
                        ),
                      ),
                      Image.asset(
                        AppImageAssets.camera,
                        width: 18,
                        height: 16,
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(child: Container(
            width: double.infinity,
            color: AppColor.whiTe,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildMethod(AppImageAssets.photo1),
                _buildMethod(AppImageAssets.photo2),
                _buildMethod(AppImageAssets.photo3),
                _buildMethod(AppImageAssets.photo4),
              ],
            )
            ,
          ))
        ],
      ),
    );
  }

  Container _buildMethod(String image ) {
    return Container(
                width: 97,
                height: 67,
                decoration: BoxDecoration(
                  color: Color(0xffC6C4D4).withOpacity(.6),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Image.asset(image,width: 14,height: 45,),
              );
  }
}
