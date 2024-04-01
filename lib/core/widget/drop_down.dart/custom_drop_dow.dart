import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/extention/extention.dart';
import 'package:vitalvibe/core/style/style.dart';

class CustomDroDownButton extends StatelessWidget {
  const CustomDroDownButton({
    super.key,
    required this.items,
    this.selectedValue,
    required this.onChanged,
  });

  final List<String> items;
  final String? selectedValue;
  final Function(String?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.1),
          borderRadius: BorderRadius.circular(8)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          hint: Row(
            children: [
              Icon(FontAwesomeIcons.userGroup,
                  size: 17, color: Color(0xff7B6F72)),
              12.ws,
              Text(
                'Choose Gender',
                style: Style.getStyle(
                    color: Color(0xff7B6F72),
                    context: context,
                    fontWeight: FontWeight.w400,
                    fontsize: 12),
              ),
            ],
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.userGroup,
                          size: 17, color: Color(0xff7B6F72)),
                      12.ws,
                      Text(item, style: 
                      
                       Style.getStyle(color: Color(0xff7B6F72),
                 context: context, fontWeight: FontWeight.w400,
                  fontsize: 12),
                ),
                    ],
                  )))
              .toList(),
          value: selectedValue,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
