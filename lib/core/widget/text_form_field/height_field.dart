import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/widget/text_form_field/custom_text_form_field.dart';
import 'package:vitalvibe/feature/auth/view/widget/show_kilo_and_miter.dart';

class HeigthField extends StatelessWidget {
  const HeigthField({super.key, required this.heightController});
  final TextEditingController heightController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Expanded(
            child: CustomTextFolemFiled(
                        inputType: TextInputType.number,

              text: 'Your Height',
              prefixIcon: FontAwesomeIcons.arrowsUpDown,
              onChanged: (String height) {
                heightController.text = height;
              },
              isPassword: false,
              textEditingController: heightController,
            )
          ), 
                                 12.ws,
                   ShowKIloAndMiter(title: 'CM',)

        ],
      ),
    );
  }
}
