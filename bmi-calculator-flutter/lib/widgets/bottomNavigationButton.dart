import 'package:flutter/material.dart';

class BottomNavigationButton extends StatelessWidget {
  const BottomNavigationButton({
    Key key,
    @required this.text,
    @required this.route,
  }) : super(key: key);

  final String text;
  final String route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        color: Theme.of(context).colorScheme.secondary,
        width: double.infinity,
        child: Text(
          text.toUpperCase(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
