import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:vitalvibe/feature/community/view/comunity_Screen.dart';
import 'package:vitalvibe/feature/home/home_Screen.dart';
import 'package:vitalvibe/feature/settings/view/settings_Screen.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());
  List<Widget> allScreen = [
    HomeScreenBody(),
    Text(
      'a',
      style: TextStyle(fontSize: 100),
    ),
    CommunityScreen(isShwoScafold: true),
    SettingScreen(isShwoScafold: true)
  ];
  int index = 0;
  void changeState({required int index}) {
    emit(ChangeState());
    this.index = index;
    emit(ChangeUi());
  }
}
