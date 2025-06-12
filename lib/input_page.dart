import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const Color activeCardColor = Colors.black26;
final Color inactiveCardColor = Colors.deepOrangeAccent.shade100;


class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = activeCardColor;
  Color femaleCardColor = activeCardColor;

  void updateColor(int gender) {
    if (gender == 1){
      if (maleCardColor == activeCardColor) {
        maleCardColor = inactiveCardColor;
        femaleCardColor = activeCardColor;
      } else {
        maleCardColor = activeCardColor;
      }
    }

    else {
      if (femaleCardColor == activeCardColor) {
        femaleCardColor = inactiveCardColor;
        maleCardColor = activeCardColor;
      } else {
        femaleCardColor = activeCardColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableContainer(
                      colour: maleCardColor,
                      cardChild: GenderCard(
                        iconData: FontAwesomeIcons.mars,
                        label: "Male",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableContainer(
                      colour: femaleCardColor,
                      cardChild: GenderCard(
                        iconData: FontAwesomeIcons.venus,
                        label: "Female",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableContainer(colour: activeCardColor,),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(colour: activeCardColor,),
                ),
                Expanded(
                  child: ReusableContainer(colour: activeCardColor,),
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





