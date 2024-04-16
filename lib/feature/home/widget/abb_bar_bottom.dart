import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    
    
    
    
    
    BottomNavigationBar(
        iconSize: 20,
        backgroundColor: Colors.black,
        selectedItemColor: AppColor.secondColor,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        selectedFontSize: 0, // تعديل حجم النص المحدد
        unselectedFontSize: 0, // تعديل حجم النص غير المحدد

        items: [
          BottomNavigationBarItem(
              label: '', icon: Icon(FontAwesomeIcons.house)),
          BottomNavigationBarItem(
              label: '', icon: Icon(FontAwesomeIcons.camera)),
          BottomNavigationBarItem(
              label: '', icon: Icon(FontAwesomeIcons.creditCard)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.settings)),
        ]);
  }
}
