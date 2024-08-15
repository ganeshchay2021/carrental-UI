import 'package:flutter/material.dart';

class FeaturedList extends StatelessWidget {
  final String title;
  final IconData icon;
  final String subTitle;

  const FeaturedList({
    super.key,
    required this.title,
    required this.icon,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 1,
          )
        ],
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Icon(
              icon,
              size: 25,
            ),
            FittedBox(child: Text(title)),
            Text(
              subTitle,
              style: const TextStyle(fontSize: 10, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
