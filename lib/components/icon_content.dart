import 'package:flutter/material.dart';
import 'constan.dart';

class GenderCard extends StatelessWidget {
  late final IconData iconData;
  late final String label;

  GenderCard({required this.iconData, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80,
          color: Colors.white, // contrast with dark background
        ),
        SizedBox(height: 15),
        Text(
          label,
          style: klableTextStyle,
        ),
      ],
    );
  }
}