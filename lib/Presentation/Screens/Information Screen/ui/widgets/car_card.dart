import 'package:carrental/Constant/image_path.dart';
import 'package:carrental/Constant/size_config.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SizedBox(
        height: 220,
        width: double.infinity,
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
                        ImagePath.carImage,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  FittedBox(
                    child: Text(
                      "Fortuner",
                      style: TextStyle(
                          fontSize: 2 * SizeConfig.textMultiplier,
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
                                " 480/Km ",
                                style: TextStyle(
                                    fontSize: 1.7 * SizeConfig.textMultiplier),
                              ),
                            ),
                            Image.asset(ImagePath.pumpImage),
                            FittedBox(
                              child: Text(
                                " 150/L",
                                style: TextStyle(
                                    fontSize: 1.7 * SizeConfig.textMultiplier),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        FittedBox(
                          child: Text(
                            "\$${45}/h",
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
