import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({
    Key key,
    this.color,
    this.child,
    this.onTap,
  }) : super(key: key);

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
            color: color != null ? color : Colors.grey.withOpacity(0.25),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
