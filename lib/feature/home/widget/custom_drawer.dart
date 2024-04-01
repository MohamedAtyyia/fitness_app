import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/const/app_image_asets.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/home/widget/item_drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    final List<ItemDrawer> itemDrawer = [
      ItemDrawer(
        icon: FontAwesomeIcons.house,
        title: 'Home',
        colorIcon: AppColor.whiTe,
        colorText: AppColor.whiTe,
        onTap: () {},
      ),
      ItemDrawer(
        icon: FontAwesomeIcons.userGroup,
        title: 'Account',
        colorIcon: AppColor.whiTe,
        colorText: AppColor.whiTe,
        onTap: () {},
      ),
      ItemDrawer(
        isTrack: true,
        icon: FontAwesomeIcons.signal,
        title: 'Trackers',
        colorIcon: AppColor.whiTe,
        colorText: AppColor.whiTe,
        onTap: () {},
      ),
      ItemDrawer(
        icon: FontAwesomeIcons.creditCard,
        title: 'Community',
        colorIcon: AppColor.whiTe,
        onTap: () {},
        colorText: AppColor.whiTe,
      ),
      ItemDrawer(
        icon: FontAwesomeIcons.star,
        onTap: ()=>Navigator.of(context).pushNamed(AppRouterName.feedBack),
        title: 'Feedback',
        colorIcon: AppColor.whiTe,
        colorText: AppColor.whiTe,
      ),
      ItemDrawer(
        onTap: (){
          Navigator.pop(context);
          Navigator.of(context).pushNamed(AppRouterName.setting);
        } ,
        icon: Icons.settings,
        title: 'Setttings',
        colorIcon: AppColor.whiTe,
        colorText: AppColor.whiTe,
      )
    ];

    return Drawer(
      width: MediaQuery.sizeOf(context).width * .6,
      child: Container(
        child: Column(
          children: [
            Image.asset(AppImageAssets.secondLogo),
            12.ws,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextInfo(
                    title: 'I',
                    textStyle: Style.getStyle(
                        color: Color(0xff3182CE),
                        context: context,
                        fontWeight: FontWeight.w700,
                        fontsize: 36)),
                TextInfo(
                    title: 'FIT',
                    textStyle: Style.getStyle(
                        color: Color(0xff255A92),
                        context: context,
                        fontWeight: FontWeight.w700,
                        fontsize: 36))
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: itemDrawer.length,
                itemBuilder: (context, index) => itemDrawer[index])
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff90CDF4).withOpacity(.5),
          Color(0xff90CDF4).withOpacity(.5),
        ])),
      ),
    );
  }
}
