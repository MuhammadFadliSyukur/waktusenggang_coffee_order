import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:waktusenggang_coffee/models/menu_model.dart';
import 'package:waktusenggang_coffee/widgets/amount.dart';
import 'package:waktusenggang_coffee/widgets/theme.dart';

class BuyButton extends StatefulWidget {
  const BuyButton({
    Key key,
    @required this.menuModel,
  }) : super(key: key);

  final MenuModel menuModel;

  @override
  _BuyButtonState createState() => _BuyButtonState();
}

class _BuyButtonState extends State<BuyButton> {
  Amount amount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              'Price',
              style: subTitleTextStyle,
            ),
            RichText(
              text: TextSpan(
                text: '\$ ',
                style: TextStyle(
                  color: Colors.amber[800],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: widget.menuModel.price.toString(),
                    style: TextStyle(
                      color: greenColor,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Spacer(),
        Parent(
          child: Container(
            child: Center(
              child: Text(
                'Buy Now',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          style: ParentStyle()
            ..width(242)
            ..height(45)
            ..background.color(Colors.amber[800])
            ..borderRadius(all: 10),
        )
      ],
    );
  }
}
