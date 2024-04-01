import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/back_bottom.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/settings/data/model/information_model.dart';

class InformationAboutAppScreen extends StatelessWidget {
  const InformationAboutAppScreen(
      {super.key, required this.informationModel, });
  final InformationModel informationModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              20.hs,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BackBottom(),
                  Spacer(flex: 1),
                  TextInfo(
                      title: informationModel.title,
                      textStyle: Style.getStyle(
                          color: AppColor.black,
                          context: context,
                          fontWeight: FontWeight.w700,
                          fontsize: 16)),
                          30.ws,
                  Spacer(flex: 1),
                ],
              ),
              16.hs,
          
              Text(informationModel. subTitle,style: TextStyle(
                fontSize: 16,
                color: AppColor.black,
                height: 2,
                fontWeight: FontWeight.w400
              ),)
              // TextInfo(
              //     title:informationModel. subTitle,
              //     textStyle: Style.getStyle(
              //         color: AppColor.black,
              //         context: context,
              //         fontWeight: FontWeight.w400,
              //         fontsize: 16))
            ],
          ),
        ),
      ),
    ));
  }
}
