import 'package:flutter/material.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/core/style/style.dart';
import 'package:vitalvibe/core/widget/text_info.dart';
import 'package:vitalvibe/feature/auth/view/widget/form_login.dart';
import 'package:vitalvibe/feature/auth/view/widget/section_auth_social_media.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
                children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              50.hs,
              TextInfo(title: 'Hey there,', textStyle: Style.getStyle(color: AppColor.black,
               context: context, fontWeight: FontWeight.w700,
                fontsize: 16)
              ),
              TextInfo(title: 'Welcome Back', textStyle: Style.getStyle(color: AppColor.black,
               context: context, fontWeight: FontWeight.w600,
                fontsize: 20)),
              20.hs,
              FormLogin(),
              16.hs,
              SectionAuthBySocialMedai(
                onTap: ()=>Navigator.of(context).pushNamed(AppRouterName.signUp),
                subTitle: 'Register',
                title: 'Don’t have an account yet?  ',
              )
            ],
          ),
        ),
                  
                ]
              ));
  }
}
