import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/validation/validation.dart';
import 'package:vitalvibe/core/widget/text_form_field/custom_text_form_field.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key, required this.emailController});
  final TextEditingController emailController;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: CustomTextFolemFiled(
              text: 'Email',
              prefixIcon: FontAwesomeIcons.envelope,
              onChanged: (String email) {
                emailController.text = email;
              },
              isPassword: false,
              validate: ValidationForm.emailValidator,
              textEditingController: emailController,
      ),
    );
  }
}