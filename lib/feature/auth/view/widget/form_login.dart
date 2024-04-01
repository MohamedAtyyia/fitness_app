import 'package:flutter/material.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/custom_bottom.dart';
import 'package:vitalvibe/core/widget/text_form_field/email.dart';
import 'package:vitalvibe/core/widget/text_form_field/password.dart';
import 'package:vitalvibe/core/widget/text_info.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> formKey;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Form(
      key: formKey,
      child: Column(children: [
        EmailField(emailController: emailController),
        PasswordField(
          passwordControl: passwordController,
        ),
        TextInfo(
            title: 'Forgot your password?',
            textStyle:  Style.getStyle(color: Color(0xff7B6F72),
                 context: context, fontWeight: FontWeight.w500,
                  fontsize: 12),
            
            
        ),
        SizedBox(height: height / 3),
        CustomBottom(
          title: 'Login',
          ontap: () {
            if (formKey.currentState!.validate()) {}
          },
          prefixImage: true,
        )
      ]),
    );
  }
}
