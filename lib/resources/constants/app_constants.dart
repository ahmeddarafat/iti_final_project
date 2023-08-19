import 'package:iti_final_project/resources/constants/app_assets.dart';

import '../../data/models/onboarding_model.dart';

class AppConstants {
  AppConstants._();

  static List<OnBoardingModel> onboardingContents = [
    OnBoardingModel(
      image: AppAssets.imageOnboarding1,
      title: "Buy Cars Online",
      description: "Find the perfect car for you with our wide selection of listings.",
    ),
    OnBoardingModel(
      image: AppAssets.imageOnboarding2,
      title: "Get the Best Deal",
      description: "Compare prices from multiple sellers and find the best deal.",
    ),
    OnBoardingModel(
      image: AppAssets.imageOnboarding3,
      title:"Make The Purchase",
      description: "Close the deal safely and securely with our escrow system.",
    ),
  ];
}
