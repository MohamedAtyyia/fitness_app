import 'package:flutter/material.dart';
import 'package:vitalvibe/core/widget/drop_down.dart/custom_drop_dow.dart';
import 'package:vitalvibe/core/widget/text_form_field/age_fiedl.dart';
import 'package:vitalvibe/core/widget/text_form_field/height_field.dart';
import 'package:vitalvibe/core/widget/text_form_field/wight_filed.dart';

class FormEnterDataFromClient extends StatefulWidget {
  const FormEnterDataFromClient({super.key});

  @override
  State<FormEnterDataFromClient> createState() =>
      _FormEnterDataFromClientState();
}

class _FormEnterDataFromClientState extends State<FormEnterDataFromClient> {
  late TextEditingController wightController;
  late TextEditingController heightController;
  late TextEditingController ageController;
  String? gender;
  @override
  void initState() {
    wightController = TextEditingController();
    heightController = TextEditingController();
    ageController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    wightController.dispose();
    heightController.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDroDownButton(items: ['Man','Woman'],
        selectedValue: gender,
         onChanged: (String? gender){
          this.gender = gender;
          setState(() {
            
          });
         }),
        AgeField(ageController: ageController),
        WeightField(wightController: wightController),
       HeigthField(heightController: heightController,),
      ],
    );
  }
}



