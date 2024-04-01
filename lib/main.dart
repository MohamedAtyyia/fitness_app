import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vitalvibe/core/router/app_reoute.dart';
import 'package:vitalvibe/feature/feadback/view/feadback_Screen.dart';
import 'package:vitalvibe/feature/settings/view/settings_Screen.dart';
import 'package:vitalvibe/feature/splash/view/splash_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]); // تحديد توجيه الشاشة في الطريقة المفضلة لكل الشاشات في التطبيق
runApp(
    const VitalVibe(),
  );

  // runApp(
  //   DevicePreview(
  //     enabled: true,
  //     tools: [
  //       ...DevicePreview.defaultTools,
  //     ],
  //     builder: (context) => const VitalVibe(),
  //   ),
  // );
 }

class VitalVibe extends StatelessWidget {
  const VitalVibe({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
    
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: LayoutBuilder(
        builder:(context,constraints) {
          
          // log(constraints.maxWidth.toString());
          // log(constraints.maxHeight.toString());
          return MaterialApp(
            locale: Locale('en'),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.generatRouter,
        home:   SplashView(),
        //  home: SettingScreen(),
          // home: WorkoutTrackerScreen(),
              );}
      ),
    );
  }
}
