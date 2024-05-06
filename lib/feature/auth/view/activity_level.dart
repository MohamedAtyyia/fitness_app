import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/custom_bottom.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/feadback/view/widget/item_feed_back.dart';

class ActivityLevel extends StatefulWidget {
  const ActivityLevel({super.key});

  @override
  State<ActivityLevel> createState() => _ActivityLevelState();
}

class _ActivityLevelState extends State<ActivityLevel> {
  final List<ActivityMode> activityMode = [
    ActivityMode(title: 'Little or no exercise', id: 1),
    ActivityMode(title: 'Exercise 1-3  times/week', id: 2),
    ActivityMode(title: 'Exercise 4-5  times/week', id: 3),
    ActivityMode(
        title: 'Daily exercise or\n intense exercise 3-4 times/week', id: 4),
    ActivityMode(title: 'Intense exercise 6-7  times/week', id: 5),
    ActivityMode(title: 'Very intense exercise daily or physical job', id: 6),
  ];
  List<bool> isClick = [false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiTe,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Workout days',
          style: Style.getStyle(
              color: AppColor.black,
              context: context,
              fontWeight: FontWeight.w700,
              fontsize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInfo(
              title: 'Activity level required',
              textStyle: Style.getStyle(
                color: AppColor.black,
                context: context,
                fontWeight: FontWeight.w600,
                fontsize: 16,
              ),
            ),
            8.hs,
            TextInfo(
              title: 'How many days do you want to train per week?',
              textStyle: Style.getStyle(
                color: AppColor.grey,
                context: context,
                fontWeight: FontWeight.w400,
                fontsize: 14,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: activityMode.length,
                itemBuilder: (context, index) => InkWell(
                  splashColor: AppColor.whiTe,
                  onTap: () {
                    _onTap(index);
                  },
                  child: ItemFeedBack(
                    title: activityMode[index].title,
                    isClic: isClick[index],
                  ),
                ),
              ),
            ),
            CustomBottom(
              title: 'next',
              ontap: () {
                Navigator.of(context).pushNamed(AppRouterName.detrminGoal);
              },
            ),
            16.hs,
          ],
        ),
      ),
    );
  }

  void _onTap(int index) {
    for (int i = 0; i < isClick.length; i++) {
      if (i == index) {
        isClick[i] = true;
      } else {
        isClick[i] = false;
      }
    }
    setState(() {});
  }
}

class ActivityMode {
  final String title;
  final int id;

  ActivityMode({required this.title, required this.id});
}
