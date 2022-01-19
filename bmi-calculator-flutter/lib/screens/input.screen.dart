import 'package:bmi_calculator/widgets/iconAndCaptionContent.dart';
import 'package:bmi_calculator/widgets/pageCard.dart';
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
              children: [
                PageCard(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                PageCard(),
                PageCard(),
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
