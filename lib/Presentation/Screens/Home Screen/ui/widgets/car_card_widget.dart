// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carrental/Presentation/Screens/Information%20Screen/ui/pages/information_screen.dart';
import 'package:flutter/material.dart';

import 'package:carrental/Constant/image_path.dart';
import 'package:carrental/Constant/size_config.dart';
import 'package:carrental/Data/model/car.dart';
import 'package:page_transition/page_transition.dart';

class CarCardWidget extends StatelessWidget {
  final Car car;
  const CarCardWidget({
    super.key,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: const InformationScreen(),
                type: PageTransitionType.rightToLeft));
      },
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 2.4 * SizeConfig.widthMultiplier),
        child: Card(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        car.carImage,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  FittedBox(
                    child: Text(
                      car.model,
                      style: TextStyle(
                          fontSize: 2.2 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 1.2 * SizeConfig.heightMultiplier,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 2.4 * SizeConfig.widthMultiplier,
                        vertical: 1 * SizeConfig.heightMultiplier),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(ImagePath.gpsImage),
                            FittedBox(
                              child: Text(
                                " ${car.distance}/Km ",
                                style: TextStyle(
                                    fontSize: 1.7 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Image.asset(ImagePath.pumpImage),
                            FittedBox(
                              child: Text(
                                " ${car.fuelCapacity}/L",
                                style: TextStyle(
                                    fontSize: 1.7 * SizeConfig.textMultiplier),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        FittedBox(
                          child: Text(
                            "\$${car.pricePerHour}/h",
                            style: TextStyle(
                                fontSize: 1.7 * SizeConfig.textMultiplier),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
