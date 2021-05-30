import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:waktusenggang_coffee/widgets/theme.dart';

class BuildBackButton extends StatelessWidget {
  const BuildBackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        child: Icon(
          Icons.chevron_left,
          color: Colors.white,
        ),
      ),
      style: ParentStyle()
        ..width(35)
        ..height(35)
        ..background.color(greenColor.withOpacity(.75))
        ..borderRadius(all: 10),
      gesture: Gestures()
        ..onTap(
          () {
            Navigator.pop(context);
          },
        ),
    );
  }
}
