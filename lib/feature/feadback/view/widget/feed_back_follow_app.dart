import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/feadback/view/widget/item_feed_back.dart';

class FeedBackFollowApp extends StatefulWidget {
  const FeedBackFollowApp({super.key});

  @override
  State<FeedBackFollowApp> createState() => _FeedBackFollowAppState();
}

class _FeedBackFollowAppState extends State<FeedBackFollowApp> {
  List<bool> isClic = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  List<String> title = [
    'Daily',
    'Once or twice a week',
    'Three or four times a week',
    'Every other week',
    'Monthly',
    'Rarely',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextInfo(
          title:
              'We don’t track your usage - would you be willing to share how much you use the app?',
          textStyle: Style.getStyle(
              color: AppColor.grey,
              context: context,
              fontWeight: FontWeight.w400,
              fontsize: 14),
        ),
        8.hs,
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          shrinkWrap: true,
          itemBuilder: (context, index) => InkWell(
            enableFeedback: false,
            splashColor:AppColor.whiTe,
              onTap: () {
                isClic = isClic.map((_) => false).toList();
                isClic[index] = true;
                setState(() {});
              },
              child: ItemFeedBack(title: title[index], isClic: isClic[index])),
        )
        // ItemFeedBack(title: 'Daily', isClic: true),
      ],
    );
  }
}
