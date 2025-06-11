import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(colour: Colors.black26,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80,
                          color: Colors.white, // contrast with dark background
                        ),
                        SizedBox(height: 15),
                        Text(
                          'MALE',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),

                  ),
                ),
                Expanded(
                  child: ReusableContainer(colour: Colors.black26,),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableContainer(colour: Colors.black26,),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(colour: Colors.black26,),
                ),
                Expanded(
                  child: ReusableContainer(colour: Colors.black26,),
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

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


