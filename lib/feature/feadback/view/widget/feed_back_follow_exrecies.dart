import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/feadback/view/widget/item_feed_back.dart';

class FeedBackFollowExercies extends StatefulWidget {
  const FeedBackFollowExercies({super.key});

  @override
  State<FeedBackFollowExercies> createState() => _FeedBackFollowExerciesState();
}

class _FeedBackFollowExerciesState extends State<FeedBackFollowExercies> {
  bool isTrue = false;
  bool isFalse = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        8.hs,
        TextInfo(
          title:
              'The workout routines provided in the app are easy to follow and understand?',
          textStyle: Style.getStyle(
              color: AppColor.grey,
              context: context,
              fontWeight: FontWeight.w400,
              fontsize: 14),
        ),
        InkWell(
          splashColor: AppColor.whiTe,
            onTap: () {
              if (!isTrue) {
                isTrue = true;
                isFalse = false;
                setState(() {});
              }
            },
            child: ItemFeedBack(title: 'True', isClic: isTrue)),
        InkWell(splashColor: AppColor.whiTe,
            onTap: () {
              if (!isFalse) {
                isTrue = false;
                isFalse = true;
                setState(() {});
              }
            },
            child: ItemFeedBack(title: 'False', isClic: isFalse))
      ],
    );
  }
}
