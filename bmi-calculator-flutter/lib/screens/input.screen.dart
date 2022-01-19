import 'package:bmi_calculator/BMICalculation.dart';
import 'package:bmi_calculator/widgets/bottomNavigationButton.dart';
import 'package:bmi_calculator/widgets/iconAndCaptionContent.dart';
import 'package:bmi_calculator/widgets/increaseValueCard.dart';
import 'package:bmi_calculator/widgets/pageCard.dart';
import 'package:bmi_calculator/widgets/sliderCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  BMICalculation bmi = BMICalculation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text('CALCULADORA DE IMC'),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PageCard(
                  active: bmi.gender == Gender.masculine,
                  onTap: () {
                    setState(() {
                      bmi.gender = Gender.masculine;
                    });
                  },
                  child: IconAndCaptionContent(
                    icon: FontAwesomeIcons.mars,
                    caption: 'Masculino',
                  ),
                ),
                PageCard(
                  active: bmi.gender == Gender.feminine,
                  onTap: () {
                    setState(() {
                      bmi.gender = Gender.feminine;
                    });
                  },
                  child: IconAndCaptionContent(
                    icon: FontAwesomeIcons.venus,
                    caption: 'Feminino',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SliderPageCard(
                  label: "Altura",
                  value: bmi.height,
                  unit: "m",
                  min: 1,
                  max: 3,
                  onChanged: (value) => setState(() {
                    bmi.height = value;
                  }),
                  formatValue: (v) =>
                      v.toStringAsFixed(2).replaceFirst('.', ','),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                IncreaseValueCard(
                  label: "Peso",
                  unit: "kg",
                  value: bmi.weight,
                  onChanged: (value) => setState(() {
                    bmi.weight = value;
                  }),
                ),
                IncreaseValueCard(
                  label: "Idade",
                  value: bmi.age,
                  onChanged: (value) => setState(() {
                    bmi.age = value;
                  }),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          BottomNavigationButton(
            text: "Calcule seu IMC",
            route: "/results",
          ),
        ],
      ),
    );
  }
}
