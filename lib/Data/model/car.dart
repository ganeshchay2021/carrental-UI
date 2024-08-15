import 'package:carrental/Constant/image_path.dart';

class Car {
  final String model;
  final int distance;
  final int fuelCapacity;
  final int pricePerHour;
  final String carImage;

  Car({
    required this.model,
    required this.distance,
    required this.fuelCapacity,
    required this.pricePerHour,
    required this.carImage,
  });
}

final List<Car> cars = [
  Car(
      model: "Fortuner",
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
      carImage: ImagePath.carImage),
  Car(
      model: "Fortuner",
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
      carImage: ImagePath.carImage),
  Car(
      model: "Fortuner",
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
      carImage: ImagePath.carImage),
  Car(
      model: "Fortuner",
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
      carImage: ImagePath.carImage),
  Car(
      model: "Fortuner",
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
      carImage: ImagePath.carImage),
];
