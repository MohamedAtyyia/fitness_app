import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/custom_bottom.dart';
import 'package:vitalvibe/core/widget/text_form_field/custom_text_form_field.dart';

class FormToEnterData extends StatefulWidget {
  const FormToEnterData({super.key});

  @override
  State<FormToEnterData> createState() => _FormToEnterDataState();
}

class _FormToEnterDataState extends State<FormToEnterData> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      50.hs,
      // SizedBox(height: MediaQuery.sizeOf(context).height * .2),
      Text(
        'Details Workout',
        style: Style.getStyle(
            color: AppColor.black,
            context: context,
            fontWeight: FontWeight.w500,
            fontsize: 14),
      ),
      12.hs,
      CustomTextFolemFiled(
        text: 'Enter workout name',
        prefixIcon: FontAwesomeIcons.dumbbell,
        onChanged: (String? value) {},
        isPassword: false,
        textEditingController: TextEditingController(),
      ),
      12.hs,
      CustomTextFolemFiled(
        inputType: TextInputType.number,
        text: 'Enter difficulty level',
        prefixIcon: FontAwesomeIcons.upDown,
        onChanged: (String? value) {},
        isPassword: false,
        textEditingController: TextEditingController(),
      ),
      12.hs,
      CustomTextFolemFiled(
        inputType: TextInputType.number,
        text: 'Enter Custom Repetitions',
        prefixIcon: FontAwesomeIcons.arrowRotateLeft,
        onChanged: (String? value) {},
        isPassword: false,
        textEditingController: TextEditingController(),
      ),
      12.hs,
      CustomTextFolemFiled(
        inputType: TextInputType.number,
        text: 'Enter Custom Weights',
        prefixIcon: FontAwesomeIcons.weightScale,
        onChanged: (String? value) {},
        isPassword: false,
        textEditingController: TextEditingController(),
      ),
      12.hs,
      Text(
        'Add notes',
        style: Style.getStyle(
            color: AppColor.black,
            context: context,
            fontWeight: FontWeight.w500,
            fontsize: 14),
      ),
      12.hs,
      CustomTextFolemFiled(
        text: 'Write your notes here',
        prefixIcon: Icons.note,
        onChanged: (String? value) {},
        isPassword: false,
        textEditingController: TextEditingController(),
      ),
      12.hs,
      CustomBottom(title: 'Save', ontap: () {}),
      12.hs,
    ]);
  }
}
