// create a padded card class with parameters
import 'package:flutter/material.dart';

class PaddedCard extends StatelessWidget {
  final Widget? child;
  final double? paddingValue;
  final Color? color;

  const PaddedCard({super.key,  this.child, this.paddingValue, this.color}) ;

  @override
  Widget build(BuildContext context) {
    return Card(

      color: color?? Theme.of(context).cardTheme.color,
      child: Padding(
        padding: EdgeInsets.all(paddingValue ?? 8.0),
        child: child,
      ),
    );
  }
}