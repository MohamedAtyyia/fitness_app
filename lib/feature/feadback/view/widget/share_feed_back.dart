import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/custom_bottom.dart';
import 'package:vitalvibe/core/widget/text_form_field/form_field_to_feed_back.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class ShareFeedBack extends StatelessWidget {
  const ShareFeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInfo(
            title: 'Share your Feedback',
            textStyle: Style.getStyle(
                color: AppColor.black,
                context: context,
                fontWeight: FontWeight.w800,
                fontsize: 24)),
        8.hs,
        TextInfo(
            title:
                'The lower abdomen and hips are the most difficult areas of the body to reduce when we are on a diet. Even so, in this area, especially the legs as a whole, you can reduce weight even if you don\'t use tools.',
            textStyle: Style.getStyle(
                color: AppColor.grey,
                context: context,
                fontWeight: FontWeight.w400,
                fontsize: 15)),
        16.hs,
        FormFieldToFeedBack(
            textEditingController: TextEditingController(),
            onChanged: (String? value) {}),
        16.hs,
        CustomBottom(title: 'Save', ontap: () {}),
        50.hs,
        CustomBottom(
            title: 'Skip and back to home',
            ontap: () => Navigator.pop(context)),
      ],
    );
  }
}
