import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vitalvibe/core/router/app_reoute.dart';
import 'package:vitalvibe/feature/home/home_Screen.dart';
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
      child: LayoutBuilder(builder: (context, constraints) {
        return MaterialApp(
          locale: Locale('en'),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.generatRouter,
          // home: WeeklyRepot(),
          // home: SplashView(),

           home: HomeScreen(),
          // home: WorkoutTrackerScreen(),
        );
      }),
    );
  }
}
