import 'package:bmi_calculator/widgets/iconAndCaptionContent.dart';
import 'package:bmi_calculator/widgets/pageContainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                PageContainer(
                  onTap: () {
                    print('Sou meninoooooo, menino femininoo!');
                  },
                  child: IconAndCaptionContent(
                    icon: FontAwesomeIcons.mars,
                    caption: 'Masculino',
                  ),
                ),
                PageContainer(
                  onTap: () {
                    print('Sou meninaaaaaa, menina masculinaa!');
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
                PageContainer(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                PageContainer(),
                PageContainer(),
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
