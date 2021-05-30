import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:waktusenggang_coffee/models/menu_model.dart';
import 'package:waktusenggang_coffee/widgets/theme.dart';

class Amount extends StatefulWidget {
  final MenuModel menuModel;

  const Amount({
    Key key,
    this.menuModel,
  }) : super(key: key);

  @override
  _AmountState createState() => _AmountState();
}

class _AmountState extends State<Amount> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Amount',
              style: titleTextStyle.copyWith(fontSize: 18, color: greenColor),
            ),
            Row(
              children: [
                Parent(
                  child: Container(
                    child: Icon(
                      Icons.remove_rounded,
                      color: greenColor,
                    ),
                  ),
                  style: ParentStyle()
                    ..height(30)
                    ..width(30)
                    ..background.color(Colors.white)
                    ..borderRadius(all: 8),
                  gesture: Gestures()
                    ..onTap(() {
                      setState(() {
                        amount--;
                        if (amount <= 1) amount = 1;
                      });
                    }),
                ),
                SizedBox(width: 15),
                Parent(
                  child: Container(
                    child: Center(
                      child: Text(
                        amount.toString(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  style: ParentStyle()
                    ..height(30)
                    ..width(30)
                    ..background.color(primaryColor)
                    ..borderRadius(all: 8)
                    ..border(color: greenColor, all: 2),
                ),
                SizedBox(width: 15),
                Parent(
                  child: Container(
                    child: Icon(Icons.add_rounded, color: Colors.white),
                  ),
                  style: ParentStyle()
                    ..height(30)
                    ..width(30)
                    ..background.color(greenColor)
                    ..borderRadius(all: 8),
                  gesture: Gestures()
                    ..onTap(() {
                      setState(() {
                        amount++;
                      });
                    }),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
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
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: (widget.menuModel.price * amount)
                            .toStringAsFixed(2),
                        style: TextStyle(
                          color: greenColor,
                          fontSize: 22,
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
                ..width(230)
                ..height(45)
                ..background.color(Colors.amber[800])
                ..borderRadius(all: 10),
            )
          ],
        ),
      ],
    );
  }
}
