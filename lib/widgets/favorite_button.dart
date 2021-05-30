import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:waktusenggang_coffee/widgets/theme.dart';

class BuildFavoriteButton extends StatefulWidget {
  const BuildFavoriteButton({
    Key key,
  }) : super(key: key);

  @override
  _BuildFavoriteButtonState createState() => _BuildFavoriteButtonState();
}

class _BuildFavoriteButtonState extends State<BuildFavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        child: (isFavorite)
            ? Icon(
                Icons.favorite,
                color: Colors.red,
              )
            : Icon(
                Icons.favorite_outline,
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
            setState(() {
              isFavorite = !isFavorite;
            });
          },
        ),
    );
  }
}
