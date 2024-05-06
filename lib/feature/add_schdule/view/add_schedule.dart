import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/feature/add_schdule/view/widget/form_to_enter_data.dart';
import 'package:vitalvibe/feature/add_schdule/view/widget/show_date.dart';

class AddSchedule extends StatelessWidget {
  const AddSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            child: Column(
              children: [Showdate(), FormToEnterData()],
            ),
          ),
        ));
  }
}
