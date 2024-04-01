import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/cusotm_sliver_appbar.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(title: 'Notification'),
          // SliverAppBarToNotidication(),
          SliverList.builder(
              itemCount: 12,
              itemBuilder: (context, index) => ItemNotification())
        ],
      ),
    ));
  }
}

class ItemNotification extends StatelessWidget {
  const ItemNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
           Row(children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: AppColor.secondColor.withOpacity(.4),
            ),
            12.ws,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextInfo(
                    title: 'Hey, it’s time for lunch',
                    textStyle: Style.getStyle(
                        color: AppColor.black,
                        context: context,
                        fontWeight: FontWeight.w500,
                        fontsize: 12)),
                4.hs,
                TextInfo(
                    title: 'About 1 minutes ago',
                    textStyle: Style.getStyle(
                        color: AppColor.grey,
                        context: context,
                        fontWeight: FontWeight.w400,
                        fontsize: 10))
              ],
            ),
          ]),
              Divider(
                thickness: 1,
                color: AppColor.grey,
              )
        ],
      ),
    );
  }
}
