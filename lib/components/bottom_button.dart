import 'package:flutter/material.dart';
import 'constan.dart';
class BottomButtonBar extends StatelessWidget {

  final String title;
  final VoidCallback onTap;

  BottomButtonBar({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kactiveCardColor,
        margin: EdgeInsets.only(top: 10,),
        padding: EdgeInsets.only(bottom: 20,),
        width: double.infinity,
        height: 80,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

