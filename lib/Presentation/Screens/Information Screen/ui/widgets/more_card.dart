import 'package:carrental/Presentation/Screens/Map%20Details%20Screen/ui/pages/map_details_sceen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class MoreCard extends StatefulWidget {
  const MoreCard({
    super.key,
  });

  @override
  State<MoreCard> createState() => _MoreCardState();
}

class _MoreCardState extends State<MoreCard>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> moveAnimation;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800))
      ..repeat(reverse: true);
    moveAnimation = Tween(begin: const Offset(0, 0), end: const Offset(-0.8, 0))
        .animate(animationController);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: const MapDetailsScreen(),
                type: PageTransitionType.rightToLeft));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 5)
          ],
        ),
        child: Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fortuner Gr",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.directions_car,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "> 870.0 Km",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.battery_0_bar,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "50.0",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            SlideTransition(
              position: moveAnimation,
              child: const AnimatedSwitcher(
                duration: Duration(milliseconds: 1000),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
