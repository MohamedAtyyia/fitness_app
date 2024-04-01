import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vitalvibe/core/router/app_reoute_name.dart';
import 'package:vitalvibe/feature/auth/view/body_shape_screen.dart';
import 'package:vitalvibe/feature/auth/view/enter_data_screen.dart';
import 'package:vitalvibe/feature/auth/view/goal_screen.dart';
import 'package:vitalvibe/feature/auth/view/login_Screen.dart';
import 'package:vitalvibe/feature/auth/view/sign_up_screen.dart';
import 'package:vitalvibe/feature/feadback/view/feadback_Screen.dart';
import 'package:vitalvibe/feature/home/home_Screen.dart';
import 'package:vitalvibe/feature/notification/view/notification_screen.dart';
import 'package:vitalvibe/feature/on_boarding/model/on_boarding_model.dart';
import 'package:vitalvibe/feature/on_boarding/on_boarding_screen.dart';
import 'package:vitalvibe/feature/part_fouces/view/details_part_fouces.dart';
import 'package:vitalvibe/feature/part_fouces/view/part_fouces.dart';
import 'package:vitalvibe/feature/settings/data/model/information_model.dart';
import 'package:vitalvibe/feature/settings/view/about_screen.dart';
import 'package:vitalvibe/feature/settings/view/settings_Screen.dart';
import 'package:vitalvibe/feature/splash/view/splash_view.dart';
import 'package:vitalvibe/feature/tracker/view/detaiks_tracker.dart';
import 'package:vitalvibe/feature/tracker/view/work_out_tracker.dart';

class AppRouter {
  static Route? generatRouter(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterName.splashView:
        return SizeTransition5(SplashView());

      case AppRouterName.onBoarding:
        final onboardingModel = settings.arguments as OnBoardingModel;
        return SizeTransition5(
            OnboadrfirstScreen(onBoardingModel: onboardingModel));

      case AppRouterName.login:
        return SizeTransition5(LoginScreen());
      case AppRouterName.signUp:
        return SizeTransition5(SignUpScreen());
      case AppRouterName.enterdata:
        return SizeTransition5(EnterDataScreen());
      case AppRouterName.detrminGoal:
        return SizeTransition5(GoalScreen());
      case AppRouterName.shapeBody:
        return SizeTransition5(BodyShapeScreen());
      case AppRouterName.homescreen:
        return SizeTransition5(HomeScreen());

      case AppRouterName.notification:
        return SizeTransition5(NotificationScreen());
      case AppRouterName.detailsTracket:
        return SizeTransition5(DetailsTracker());
      case AppRouterName.workoutTrackerScreen:
        return SizeTransition5(WorkoutTrackerScreen());
      case AppRouterName.partFouces:
        return SizeTransition5(PartFoucesScreen());
      case AppRouterName.detailsPartFouces:
        return SizeTransition5(DetailsPartFouces());
      case AppRouterName.setting:
        return SizeTransition5(SettingScreen());
      case AppRouterName.feedBack:
        return SizeTransition5(FeadBackScreen());

      case AppRouterName.informationScreen:
      final informationModel = settings.arguments as InformationModel;
        return SizeTransition5(InformationAboutAppScreen(informationModel:informationModel));
      default:
        return SizeTransition5(SplashView());
    }
  }
}

class SizeTransition5 extends PageRouteBuilder {
  final Widget page;

  SizeTransition5(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(seconds: 2),
          // reverseTransitionDuration:const  Duration(seconds: 2),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return Align(
              alignment: Alignment.centerRight,
              child: SizeTransition(
                axis: Axis.horizontal,
                sizeFactor: animation,
                child: page,
                axisAlignment: 0,
              ),
            );
          },
        );
}
