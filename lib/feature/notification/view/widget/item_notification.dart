import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/notification/view/notification_screen.dart';

class ItemNotification extends StatelessWidget {
  const ItemNotification({super.key, required this.notificationModel});
final NotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
           Row(children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff8AC4E9).withOpacity(.6),
              ),
              child: Image.asset(notificationModel.image)
              ),
            12.ws,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextInfo(
                    title: notificationModel.title,
                    textStyle: Style.getStyle(
                        color: AppColor.black,
                        context: context,
                        fontWeight: FontWeight.w500,
                        fontsize: 12)),
                4.hs,
                TextInfo(
                    title: notificationModel.subTitle,
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
