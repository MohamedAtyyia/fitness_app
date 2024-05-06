import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/custom_bottom.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/feadback/view/widget/item_feed_back.dart';

class WeeklyRepot extends StatelessWidget {
  const WeeklyRepot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.whiTe,
          centerTitle: true,
          title: Text(
            'Weekly Report',
            style: Style.getStyle(
                color: AppColor.black,
                context: context,
                fontWeight: FontWeight.w700,
                fontsize: 20),
          ),
        ),
        body: FormToEnterReport());
  }
}

class FormToEnterReport extends StatefulWidget {
  const FormToEnterReport({super.key});

  @override
  State<FormToEnterReport> createState() => _FormToEnterReportState();
}

class _FormToEnterReportState extends State<FormToEnterReport> {
  List<bool> isClick = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,false
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildQuestion(
                context: context,
                title: 'Is There a change in weight',
                num1: 0,
                num2: 1),
            _buildQuestion(
                context: context,
                title: 'Have you been injured by any exercise?',
                num1: 2,
                num2: 3),
            _buildQuestion(
                context: context,
                title: 'Did you sleep well during the week?',
                num1: 4,
                num2: 5),
            _buildQuestion(
                context: context, title: 'Did you eat well?', num1: 6, num2: 7),
            _buildQuestion(
                context: context,
                title: 'Did you exercise regularly? ',
                num1: 8,
                num2: 9),
                20.hs,
                CustomBottom(title: 'Save', ontap: (){}),
                20.hs
          ],
        ),
      ),
    );
  }

  Column _buildQuestion(
      {required BuildContext context,
      required String title,
      required int num1,
      required int num2}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInfo(
          title: title,
          textStyle: Style.getStyle(
              color: AppColor.grey,
              context: context,
              fontWeight: FontWeight.w400,
              fontsize: 14),
        ),
        InkWell(
            splashColor: AppColor.whiTe,
            onTap: () {
              if (!isClick[num1]) {
                isClick[num1] = true;
                isClick[num2] = false;
                setState(() {});
              }
            },
            child: ItemFeedBack(title: 'True', isClic: isClick[num1])),
        InkWell(
            splashColor: AppColor.whiTe,
            onTap: () {
              if (!isClick[num2]) {
                isClick[num2] = true;
                isClick[num1] = false;
                setState(() {});
              }
            },
            child: ItemFeedBack(title: 'False', isClic: isClick[num2]))
      ],
    );
  }
}
