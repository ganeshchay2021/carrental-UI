
import 'package:carrental/Constant/size_config.dart';
import 'package:carrental/Presentation/Screens/Home%20Screen/ui/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class OnBoardingScreenBottomPart extends StatelessWidget {
  const OnBoardingScreenBottomPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                "Premium cars.\nEnjoy the Luxury",
                style: TextStyle(
                    fontSize: 3.4 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier,
            ),
            FittedBox(
              child: Text(
                "Premiun and prestige car daily rental.\nExperience the thrill at a lower price",
                style: TextStyle(
                  fontSize: 1.7 * SizeConfig.textMultiplier,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            SizedBox(
              height: 5.4 * SizeConfig.heightMultiplier,
              width: 74.5 * SizeConfig.widthMultiplier,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageTransition(
                      child: const HomeScreen(),
                      type: PageTransitionType.rightToLeft,
                    ),
                  );
                },
                child: Text(
                  "Lets Go",
                  style: TextStyle(
                      fontSize: 2 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
