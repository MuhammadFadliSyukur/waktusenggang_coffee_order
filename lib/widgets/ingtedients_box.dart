import 'package:division/division.dart';
import 'package:flutter/material.dart';

class IngredientsBox extends StatelessWidget {
  final String ingredient;
  const IngredientsBox({
    Key key,
    this.ingredient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        child: Image.asset(
          ingredient,
          width: 18,
        ),
      ),
      style: ParentStyle()
        ..width(43)
        ..height(43)
        ..background.color(Colors.white)
        ..borderRadius(all: 8)
        ..padding(all: 6),
    );
  }
}
