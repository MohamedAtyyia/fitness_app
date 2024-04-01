import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/auth/view/widget/form_sign_in.dart';
import 'package:vitalvibe/feature/auth/view/widget/section_auth_social_media.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  50.hs,
                  TextInfo(title: 'Hey there,', textStyle: Style.getStyle(color: AppColor.black,
                   context: context, fontWeight: FontWeight.w700, fontsize: 16)),
                  TextInfo(title: 'Welcome Back', textStyle:Style.getStyle(color: AppColor.black,
                   context: context,
                    fontWeight: FontWeight.w700, fontsize: 20) 
                  //Style.style20
                  ),
                  20.hs,
                  FormSignIn(),
                  SectionAuthBySocialMedai(
                    onTap: () => Navigator.pop(context),
                      title: 'Already have an account? ', subTitle: 'Login')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
