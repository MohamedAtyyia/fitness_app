import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_const.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/feature/settings/data/model/information_model.dart';
import 'package:vitalvibe/feature/settings/view/widget/item_Setting.dart';

class CardSetting extends StatelessWidget {
  const CardSetting({super.key});
  @override
  Widget build(BuildContext context) {
    final List<ItemSettins> itemSettins = [
      ItemSettins(
          title: 'Masi Ramezanzade',
          image: AppImageAssets.nameUser,
          onTap: () {}),
      ItemSettins(
          title: 'Weight gain', image: AppImageAssets.weightUser, onTap: () {}),
      ItemSettins(
          title: 'Jasonduooo@gmail.com',
          image: AppImageAssets.email,
          onTap: () {}),
      ItemSettins(
          title: '+1234 587 65', image: AppImageAssets.phone, onTap: () {}),
      ItemSettins(title: 'Female', image: AppImageAssets.gender, onTap: () {}),
      ItemSettins(title: '26', image: AppImageAssets.ageUser, onTap: () {}),
      ItemSettins(
          title: '26', image: AppImageAssets.dumbelSettins, onTap: () {}),
      ItemSettins(title: '166', image: AppImageAssets.person, onTap: () {}),
      ItemSettins(
          title: 'Change Password', image: AppImageAssets.lock, onTap: () {}),
      ItemSettins(
          title: 'Statistics', image: AppImageAssets.list, onTap: () {}),
      ItemSettins(
          title: 'Notification',
          image: AppImageAssets.notification,
          isNotification: true,
          onTap: () {}),
      ItemSettins(
          title: 'Privacy Policy',
          image: AppImageAssets.privacy,
          onTap: () => Navigator.of(context).pushNamed(
              AppRouterName.informationScreen,
              arguments: InformationModel(
                  title: 'Privacy  Policy', subTitle: AppConst.privacyPolicy))),
      ItemSettins(
          title: 'Terms and conditions',
          image: AppImageAssets.condations,
          onTap: () => Navigator.of(context).pushNamed(
              AppRouterName.informationScreen,
              arguments: InformationModel(
                  title: 'Terms and Conditions ',
                  subTitle: AppConst.termsAndConditions))),
      ItemSettins(
          title: 'Cookie Policy',
          image: AppImageAssets.policy,
          onTap: () => Navigator.of(context).pushNamed(
              AppRouterName.informationScreen,
              arguments: InformationModel(
                  title: 'Cookie  Policy',
                  subTitle: AppConst.cookiePolicy))),
      ItemSettins(
          title: 'About',
          image: AppImageAssets.about,
          onTap: () => Navigator.of(context).pushNamed(
              AppRouterName.informationScreen,
              arguments: InformationModel(
                  title: 'About us', subTitle: AppConst.aboutUs))),
    ];

    return SliverToBoxAdapter(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(
              color: AppColor.whiTe,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4), // لون الظل
                  spreadRadius: 5, // نطاق الانتشار
                  blurRadius: 7, // نطاق الضبابية
                  offset: Offset(0, 3), // تعيين موضع الظل بالنسبة للعنصر
                ),
              ],
              borderRadius: BorderRadius.circular(8)),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: itemSettins.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => itemSettins[index],
          )

          //  Column(
          //   children: [
          //     ItemSettins(
          //         title: 'Masi Ramezanzade',
          //         image: AppImageAssets.nameUser,
          //         onTap: () {}),

          //     ItemSettins(
          //         title: 'Weight gain',
          //         image: AppImageAssets.weightUser,
          //         onTap: () {})
          //   ],
          // ),
          ),
    );
  }
}
