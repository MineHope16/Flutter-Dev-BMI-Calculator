import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../components/constan.dart';
import '../components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  late final String bmiResult;
  late final String resultText;
  late final String bmiSuggestion;
  late final String userGenderAge;

  ResultPage({
    required this.bmiResult,
    required this.bmiSuggestion,
    required this.resultText,
    required this.userGenderAge,
  });

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text("Your Result", style: kHeadResult),
            ),
          ),
          SizedBox(child: Text(userGenderAge),height: 20,),
          Expanded(
            flex: 8,
            child: ReusableContainer(
              colour: kinactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText, style: kresultStyle),
                  Text(bmiResult, style: kBMIresult),
                  Text(
                    "Normal Range ~ 18.5 - 25 kg/m2",
                    style: kresultDescStyleN,
                  ),
                  Text(
                    bmiSuggestion,
                    textAlign: TextAlign.center,
                    style: kresultDescStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButtonBar(
            title: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
