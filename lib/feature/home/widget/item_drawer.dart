import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class ItemDrawer extends StatefulWidget {
  const ItemDrawer(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap,
      required this.colorIcon,
      required this.colorText,
      this.isTrack});
  final IconData icon;
  final Color colorIcon;
  final String title;
  final Color colorText;
  final VoidCallback onTap;
  final bool? isTrack;

  @override
  State<ItemDrawer> createState() => _ItemDrawerState();
}

class _ItemDrawerState extends State<ItemDrawer> {
  Color? backGround;
  Color? color;
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 600),
      curve: Curves.fastEaseInToSlowEaseOut,
      color: backGround,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  widget.icon,
                  color: color ?? widget.colorIcon,
                  size: 22,
                ),
                16.ws,
                TextInfo(
                    title: widget.title,
                    textStyle: Style.getStyle(
                        color: color ?? widget.colorText,
                        context: context,
                        fontWeight: FontWeight.w500,
                        fontsize: 14)),
                Spacer(flex: 1),
                widget.isTrack == null
                    ? SizedBox()
                    : IconButton(
                        onPressed: () {
                          isClick = !isClick;
                          if (isClick) {
                            color = AppColor.secondColor;
                            backGround = AppColor.whiTe;
                          } else {
                            color = null;
                            backGround = null;
                          }
                          setState(() {});
                        },
                        icon: isClick == false
                            ? Icon(
                                FontAwesomeIcons.chevronDown,
                                color: AppColor.whiTe,
                                size: 22,
                              )
                            : Icon(
                                FontAwesomeIcons.chevronUp,
                                color: AppColor.secondColor,
                                size: 22,
                              ),
                      )
              ],
            ),
            isClick == true
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _textinfo('Workout Tracker', context, () {
                        Navigator.pop(context);
                        Navigator.of(context)
                            .pushNamed(AppRouterName.workoutTrackerScreen);
                      }),
                      8.hs,
                      _textinfo('Workout Schedule', context, () {
                        Navigator.pop(context);
                        Navigator.of(context)
                            .pushNamed(AppRouterName.workSchduel);
                      }),
                      8.hs,
                      _textinfo('Sleep Tracker', context, () {
                        Navigator.pop(context);
                        Navigator.of(context)
                            .pushNamed(AppRouterName.sleepTracker);
                      }),
                      8.hs,
                      _textinfo('Sleep Schedule', context, () {
                        Navigator.pop(context);
                        Navigator.of(context)
                            .pushNamed(AppRouterName.sleepSchedule);
                      }),
                      8.hs,
                      _textinfo('Part focus', context, () {
                        Navigator.pop(context);
                        Navigator.of(context)
                            .pushNamed(AppRouterName.partFouces);
                      }),
                      8.hs,
                      _textinfo('Weekly Repot', context, () {
                        Navigator.pop(context);
                        Navigator.of(context)
                            .pushNamed(AppRouterName.weeklyrepot);
                      }),
                    ],
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }

  Widget _textinfo(String title, BuildContext context, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: TextInfo(
          title: title,
          textStyle: Style.getStyle(
              color: AppColor.black,
              context: context,
              fontWeight: FontWeight.w400,
              fontsize: 14)),
    );
  }
}
