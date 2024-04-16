import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/widget/text_form_field/custom_text_form_field.dart';
import 'package:vitalvibe/feature/auth/view/widget/show_kilo_and_miter.dart';

class WeightField extends StatelessWidget {
  const WeightField({super.key, required this.wightController});
  final TextEditingController wightController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
           Expanded(
             child: CustomTextFolemFiled(
                        inputType: TextInputType.number,

                text: 'Your Weight',
                prefixIcon: FontAwesomeIcons.weightScale,
                onChanged: (String weight) {
                  wightController.text = weight;
                },
                isPassword: false,
                textEditingController: wightController),
           ),
            12.ws,
                   ShowKIloAndMiter(title: 'KG',)
        ],
      ),
    );
  }
}

