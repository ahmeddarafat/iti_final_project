part of '../onboarding_page.dart';

class OnboardingItem extends StatelessWidget {
  final OnBoardingModel onBoarding;
  const OnboardingItem({
    Key? key,
    required this.onBoarding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          onBoarding.image,
          height: 300.h,
          width: double.infinity,
        ),
        SizedBox(height: 30.h),
        PublicText(
          txt: onBoarding.title,
          color: AppColors.black,
          fw: FontWeight.bold,
          size: 25.sp,
        ),
        SizedBox(height: 16.h),
        PublicText(
          txt: onBoarding.description,
          color: AppColors.grey,
          size: 17.sp,
          align: TextAlign.center,
        ),
      ],
    );
  }
}