import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/feadback/view/widget/feed_back_follow_app.dart';
import 'package:vitalvibe/feature/feadback/view/widget/feed_back_follow_exrecies.dart';
import 'package:vitalvibe/feature/feadback/view/widget/permrion_detrmine_play.dart';
import 'package:vitalvibe/feature/feadback/view/widget/share_feed_back.dart';

class FeadBackScreen extends StatelessWidget {
  const FeadBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: ListView(
          children: [
            TextInfo(
              title: 'Usage',
              textStyle: Style.getStyle(
                  color: AppColor.black,
                  context: context,
                  fontWeight: FontWeight.w600,
                  fontsize: 18),
            ),
            8.hs,
            FeedBackFollowApp(),
            FeedBackFollowExercies(),
            PermsionDetrminePlay(),
            ShareFeedBack()
          ],
        ),
      ),
    ));
  }
}

