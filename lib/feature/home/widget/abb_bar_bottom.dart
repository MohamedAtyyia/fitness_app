import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitalvibe/core/const/app_color.dart';
import 'package:vitalvibe/feature/home/manager/cubit/bottom_nav_bar_cubit.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({super.key});

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        return BottomNavigationBar(
            iconSize: 20,
            backgroundColor: Colors.black,
            selectedItemColor: AppColor.secondColor,
            unselectedItemColor: Colors.grey,
            currentIndex: BlocProvider.of<BottomNavBarCubit>(context).index,
            selectedFontSize: 0, // تعديل حجم النص المحدد
            unselectedFontSize: 0, // تعديل حجم النص غير المحدد
            onTap: (int index) {
              BlocProvider.of<BottomNavBarCubit>(context)
                  .changeState(index: index);
            },
            items: [
              BottomNavigationBarItem(
                  label: '', icon: Icon(FontAwesomeIcons.house)),
              BottomNavigationBarItem(
                  label: '', icon: Icon(FontAwesomeIcons.camera)),
              BottomNavigationBarItem(
                  label: '', icon: Icon(FontAwesomeIcons.creditCard)),
              BottomNavigationBarItem(label: '', icon: Icon(Icons.settings)),
            ]);
      },
    );
  }
}
