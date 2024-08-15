import 'package:carrental/Constant/responsive.dart';
import 'package:carrental/Constant/size_config.dart';
import 'package:carrental/Presentation/Screens/OnBoarding%20Screen/widgets/onboarding_screen_bottom_part.dart';
import 'package:carrental/Presentation/Screens/OnBoarding%20Screen/widgets/onbording_image.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff2C2B34),
      body: Responsive(
        potraitView: OnBoardingScreenPotraitView(),
        landscapeView: OnBoardingScreenLandScapeView(),
      ),
    );
  }
}

class OnBoardingScreenPotraitView extends StatelessWidget {
  const OnBoardingScreenPotraitView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OnBoardingImage(),
        OnBoardingScreenBottomPart(),
      ],
    );
  }
}

class OnBoardingScreenLandScapeView extends StatelessWidget {
  const OnBoardingScreenLandScapeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const OnBoardingImage(),
        const OnBoardingScreenBottomPart(),
        SizedBox(
          width: 4.5 * SizeConfig.widthMultiplier,
        )
      ],
    );
  }
}
