part of 'bottom_nav_bar_cubit.dart';

@immutable
sealed class BottomNavBarState {}

final class BottomNavBarInitial extends BottomNavBarState {}

final class ChangeState extends BottomNavBarState {}

final class ChangeUi extends BottomNavBarState {}
