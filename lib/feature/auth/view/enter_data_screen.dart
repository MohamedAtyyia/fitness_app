import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/custom_bottom.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/auth/view/widget/form_to_enter_data_from_client.dart';
import 'package:vitalvibe/feature/auth/view/widget/show_image.dart';

class EnterDataScreen extends StatelessWidget {
  const EnterDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                ShowImage(),
                TextInfo(
                    title: 'Let’s complete your profile',
                    textStyle: Style.getStyle(
                        color: AppColor.black,
                        context: context,
                        fontWeight: FontWeight.w700,
                        fontsize: 20)),
                TextInfo(
                  title: 'It will help us to know more about you!',
                  textStyle: Style.getStyle(
                      color: Color(0xff7B6F72),
                      context: context,
                      fontWeight: FontWeight.w400,
                      fontsize: 12),
                ),
                FormEnterDataFromClient()
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(
                  flex: 1,
                ),
                CustomBottom(
                  title: 'Next',
                  ontap: () {
                    Navigator.of(context).pushNamed(AppRouterName.activityLevel);
                  },
                  suffixIcon: true,
                ),
                12.hs
              ],
            ),
          )
        ],
      ),
    ));
  }
}
