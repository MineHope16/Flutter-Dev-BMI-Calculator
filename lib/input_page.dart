import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const Color inactiveCardColor = Colors.black26;
final Color activeCardColor = Colors.deepOrangeAccent.shade100;

enum Gender {
  male,
  female,
}


class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;

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
                        selectedGender = Gender.male;
                      });
                    },
                    onDoubleTap: (){
                      setState(() {
                        selectedGender = null;
                      });
                    },
                    child: ReusableContainer(
                      colour: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
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
                        selectedGender = Gender.female;
                      });
                    },
                    onDoubleTap: (){
                      setState(() {
                        selectedGender = null;
                      });
                    },
                    child: ReusableContainer(
                        colour: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
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
            child: ReusableContainer(colour: inactiveCardColor,),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(colour: inactiveCardColor,),
                ),
                Expanded(
                  child: ReusableContainer(colour: inactiveCardColor,),
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





