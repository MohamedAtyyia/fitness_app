import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';

import 'package:vitalvibe/core/widget/cusotm_sliver_appbar.dart';
import 'package:vitalvibe/feature/notification/view/widget/item_notification.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  static final List<NotificationModel> notificationModel = [
    NotificationModel(
        title: 'Hey, it’s time for lunch',
        subTitle: 'About 1 minutes ago',
        image: AppImageAssets.notifi1),
    NotificationModel(
        title: 'Don’t miss your lowerbody workout',
        subTitle: 'About 3 hours ago',
        image: AppImageAssets.notifi2),
    NotificationModel(
        title: 'Hey, let’s add some meals for your b..',
        subTitle: 'About 3 hours ago',
        image: AppImageAssets.notifi3),
    NotificationModel(
        title: 'Congratulations, You have finished A..',
        subTitle: 'About 3 hours ago',
        image: AppImageAssets.notifi4),
    NotificationModel(
        title: 'Congratulations, You have finished A..',
        subTitle: '29 May',
        image: AppImageAssets.notifi3),
    NotificationModel(
        title: 'Ups, You have missed your Lowerbo... ',
        subTitle: '3 April',
        image: AppImageAssets.notifi2),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: CustomScrollView(
    slivers: [
      CustomSliverAppBar(title: 'Notification'),
      SliverList.builder(
          itemCount: notificationModel.length,
          itemBuilder: (context, index) => ItemNotification(notificationModel: notificationModel[index],))
    ],
          ),
        );
  }
}

class NotificationModel {
  final String title;
  final String subTitle;
  final String image;

  NotificationModel(
      {required this.title, required this.subTitle, required this.image});
}
