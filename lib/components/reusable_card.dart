import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  late final Color colour;
  late final Widget? cardChild;

  ReusableContainer({required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(15),
      child: cardChild,
    );
  }
}
