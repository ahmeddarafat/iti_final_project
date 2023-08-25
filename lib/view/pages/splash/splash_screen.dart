import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iti_final_project/resources/constants/app_assets.dart';
import 'package:iti_final_project/resources/styles/app_colors.dart';
import 'package:iti_final_project/view/pages/onboarding/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 4), 
            ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const OnboardingPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.carLogo),
            SizedBox(height: 30.h,),
            const Text("Car's Store", style: TextStyle(color: Color(0xff013274), fontSize: 30, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
