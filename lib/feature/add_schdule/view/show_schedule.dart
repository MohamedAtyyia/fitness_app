import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/feature/add_schdule/view/widget/item_scheduel.dart';
import 'package:vitalvibe/feature/add_schdule/view/widget/show_date.dart';

class ShowSchedule extends StatelessWidget {
  const ShowSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () => Navigator.of(context).pushNamed(AppRouterName.addSchduel),
        child: CircleAvatar(
            radius: 30,
            backgroundColor: AppColor.secondColor,
            child: Icon(
              FontAwesomeIcons.plus,
              color: AppColor.whiTe,
              size: 24,
            )),
      ),
      appBar: AppBar(
        backgroundColor: AppColor.whiTe,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Workout Schedule',
          style: Style.getStyle(
              color: AppColor.black,
              context: context,
              fontWeight: FontWeight.w700,
              fontsize: 20),
        ),
      ),
      body: Column(
        children: [Showdate(), 10.hs, ShowItemSchedule()],
      ),
    );
  }
}
