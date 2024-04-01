import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/validation/validation.dart';
import 'package:vitalvibe/core/widget/text_form_field/custom_text_form_field.dart';

class UserNameField extends StatelessWidget {
  final TextEditingController userNameControl;

  const UserNameField({super.key, required this.userNameControl});
  @override
  Widget build(BuildContext context) {
    return       Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: CustomTextFolemFiled(
            text: 'Full Name',
            prefixIcon: FontAwesomeIcons.user,
            onChanged: (String username) {
              userNameControl.text = username;
            },
            isPassword: false,
            validate: ValidationForm.userNameValidator,
            textEditingController: userNameControl),
    );
  }
}