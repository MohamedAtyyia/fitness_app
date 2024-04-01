import 'package:flutter/material.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/widget/custom_bottom.dart';
import 'package:vitalvibe/core/widget/text_form_field/email.dart';
import 'package:vitalvibe/core/widget/text_form_field/full_name.dart';
import 'package:vitalvibe/core/widget/text_form_field/password.dart';
import 'package:vitalvibe/core/widget/text_form_field/phone_number.dart';
import 'package:vitalvibe/feature/auth/view/widget/custom_check_box.dart';

class FormSignIn extends StatefulWidget {
  const FormSignIn({super.key});

  @override
  State<FormSignIn> createState() => _FormSignInState();
}

class _FormSignInState extends State<FormSignIn> {
  late TextEditingController userNameControl;
  late TextEditingController phoneNumberControl;
  late TextEditingController emailControl;
  late TextEditingController passwordControl;
  late GlobalKey<FormState> formKey;
  @override
  void initState() {
    userNameControl = TextEditingController();
    phoneNumberControl = TextEditingController();
    emailControl = TextEditingController();
    passwordControl = TextEditingController();
    formKey = GlobalKey();
    super.initState();
  }

  @override
  void dispose() {
    userNameControl.dispose();
    phoneNumberControl.dispose();
    emailControl.dispose();
    passwordControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(children: [
        UserNameField(userNameControl: userNameControl),
        PhoneNumberField(phoneNumberControl: phoneNumberControl),
        EmailField(emailController: emailControl),
        PasswordField(passwordControl: passwordControl),
        12.hs,
        CustomChckBox(),
        100.hs,
        CustomBottom(
            title: 'Register',
            ontap: () {
                            Navigator.of(context).pushNamed(AppRouterName.enterdata);

              // if (formKey.currentState!.validate()) {
              //   Navigator.of(context).pushNamed(AppRouterName.enterdata);
              // }
            }),
        24.hs,
      ]),
    );
  }
}
