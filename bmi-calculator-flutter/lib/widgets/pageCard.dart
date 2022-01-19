import 'package:flutter/material.dart';

class PageCard extends StatelessWidget {
  const PageCard({
    Key key,
    this.active = true,
    this.color,
    this.child,
    this.onTap,
  }) : super(key: key);

  final bool active;
  final Color color;
  final Widget child;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: child,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color != null
                ? color
                : Colors.grey.withOpacity(active ? 0.4 : 0.2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
