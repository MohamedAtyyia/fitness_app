import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/validation/validation.dart';
import 'package:vitalvibe/core/widget/text_form_field/custom_text_form_field.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({super.key, required this.phoneNumberControl});
  final TextEditingController phoneNumberControl;
  @override
  Widget build(BuildContext context) {
    return       Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: CustomTextFolemFiled(
            text: 'Phone Number',
            prefixIcon: FontAwesomeIcons.phone,
            onChanged: (String phone) {
              phoneNumberControl.text = phone;
            },
            isPassword: false,
            validate: ValidationForm.phoneValidator,
            textEditingController: phoneNumberControl),
    );
  }
}