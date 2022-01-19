import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({
    Key key,
    this.color,
    this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color != null ? color : Colors.grey.withOpacity(0.25),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
