import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iti_final_project/resources/styles/app_colors.dart';
import 'package:iti_final_project/view/pages/NavigationBar/navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iti_final_project/data/source/local/app_prefs.dart';
import 'package:iti_final_project/view/pages/onboarding/onboarding_page.dart';
import 'package:iti_final_project/view/pages/splash/splash_screen.dart';
import 'package:iti_final_project/view_model/onboarding/onboarding_cubit.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  await AppPrefs.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => OnboardingCubit(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'ITI Final Project',
            theme: ThemeData(
              colorScheme:
                  ColorScheme.fromSeed(seedColor: const Color(0xff013274)),
              useMaterial3: true,
            ),
            scrollBehavior: ScrollConfiguration.of(context).copyWith(
              physics: const BouncingScrollPhysics(),
            ),
            home: const SplashScreen(),
          ),
        );
      },
    );
  }
}
