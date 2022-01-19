import 'package:bmi_calculator/widgets/pageCard.dart';
import 'package:bmi_calculator/widgets/roundedIconButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IncreaseValueCard extends StatelessWidget {
  IncreaseValueCard({
    this.label,
    this.unit,
    this.formatValue,
    @required this.value,
    @required this.onChanged,
  });

  final String label;
  final String unit;
  final double value;
  final void Function(double) onChanged;
  final String Function(double) formatValue;

  @override
  Widget build(BuildContext context) {
    return PageCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          label != null
              ? Text(
                  (label + (unit != null ? " ($unit)" : "")).toUpperCase(),
                  style: Theme.of(context).textTheme.caption,
                )
              : null,
          Text(
            formatValue != null ? formatValue(value) : value.toStringAsFixed(0),
            style: Theme.of(context).textTheme.headline2.copyWith(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RoundedIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                  onChanged(value - 1);
                },
              ),
              RoundedIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: () {
                  onChanged(value + 1);
                },
              ),
            ],
          ),
        ].where((e) => e != null).toList(),
      ),
    );
  }
}
