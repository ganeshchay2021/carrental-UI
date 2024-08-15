import 'package:carrental/Data/model/car.dart';
import 'package:carrental/Presentation/Screens/Home%20Screen/ui/widgets/car_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        title: const Text("Choose your Car"),
      ),
      body: GridView.builder(
        itemCount: cars.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 16 / 9,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return CarCardWidget(
            car: cars[index],
          );
        },
      ),
    );
  }
}
