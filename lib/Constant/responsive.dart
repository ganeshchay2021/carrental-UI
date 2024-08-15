// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget potraitView;
  final Widget landscapeView;

  const Responsive({
    super.key,
    required this.potraitView,
    required this.landscapeView,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 450) {
          return landscapeView;
        } else {
          return potraitView;
        }
      },
    );
  }
}
