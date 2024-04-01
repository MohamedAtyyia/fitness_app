import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/validation/validation.dart';
import 'package:vitalvibe/core/widget/text_form_field/custom_text_form_field.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key, required this.passwordControl});
  final TextEditingController passwordControl;
  @override
  Widget build(BuildContext context) {
    return              Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: CustomTextFolemFiled(
              text: 'Password',
              prefixIcon: FontAwesomeIcons.lock,
              onChanged: (String email) {
                passwordControl.text = email;
              },
              isPassword: true,
              validate: ValidationForm.passwordValidator,
              textEditingController: passwordControl,
              ),
    );
  }
}