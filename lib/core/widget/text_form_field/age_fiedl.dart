import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/widget/text_form_field/custom_text_form_field.dart';

class AgeField extends StatelessWidget {
  const AgeField({super.key, required this.ageController});
  final TextEditingController ageController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: CustomTextFolemFiled(
          text: 'Age',
          prefixIcon: FontAwesomeIcons.calendarDays,
          onChanged: (String age) {
            ageController.text = age;
          },
          isPassword: false,
          textEditingController: ageController),
    );
  }
}
