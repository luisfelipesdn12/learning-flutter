import 'package:bmi_calculator/widgets/pageCard.dart';
import 'package:flutter/material.dart';

class SliderPageCard extends StatelessWidget {
  SliderPageCard({
    this.label,
    this.unit,
    @required this.min,
    @required this.max,
    @required this.value,
    @required this.onChanged,
    @required this.formatValue,
  });

  final String label;
  final String unit;
  final double value;
  final double min;
  final double max;
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
                  label.toUpperCase(),
                  style: Theme.of(context).textTheme.caption,
                )
              : null,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                formatValue != null
                    ? formatValue(value)
                    : value.toStringAsFixed(2),
                style: Theme.of(context).textTheme.headline2.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
              ),
              unit != null ? SizedBox(width: 5) : null,
              unit != null
                  ? Text(unit, style: Theme.of(context).textTheme.caption)
                  : null,
            ].where((e) => e != null).toList(),
          ),
          SizedBox(
            height: 5,
          ),
          Slider(
            value: value,
            min: min,
            max: max,
            onChanged: onChanged,
          ),
        ].where((e) => e != null).toList(),
      ),
    );
  }
}
