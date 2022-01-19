import 'package:bmi_calculator/widgets/iconAndCaptionContent.dart';
import 'package:bmi_calculator/widgets/increaseValueCard.dart';
import 'package:bmi_calculator/widgets/pageCard.dart';
import 'package:bmi_calculator/widgets/sliderCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  feminine,
  masculine,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  double height = 1.5;
  double weight = 60;
  double age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text('CALCULADORA DE IMC'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PageCard(
                  active: selectedGender == Gender.masculine,
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.masculine;
                    });
                  },
                  child: IconAndCaptionContent(
                    icon: FontAwesomeIcons.mars,
                    caption: 'Masculino',
                  ),
                ),
                PageCard(
                  active: selectedGender == Gender.feminine,
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.feminine;
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
                  value: height,
                  unit: "cm",
                  min: 1,
                  max: 3,
                  onChanged: (value) => setState(() {
                    height = value;
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
                  value: weight,
                  onChanged: (value) => setState(() {
                    weight = value;
                  }),
                ),
                IncreaseValueCard(
                  label: "Idade",
                  value: age,
                  onChanged: (value) => setState(() {
                    age = value;
                  }),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            color: Theme.of(context).colorScheme.secondary,
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
