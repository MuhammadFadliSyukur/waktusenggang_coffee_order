import 'package:flutter/material.dart';
import 'package:waktusenggang_coffee/models/menu_model.dart';
import 'package:waktusenggang_coffee/widgets/amount.dart';

import 'package:waktusenggang_coffee/widgets/theme.dart';

class DescriptionDetail extends StatelessWidget {
  const DescriptionDetail({
    Key key,
    @required this.menuModel,
  }) : super(key: key);

  final MenuModel menuModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Description',
            style: titleTextStyle.copyWith(fontSize: 18, color: greenColor),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              text: menuModel.description,
              style: TextStyle(color: Colors.black87),
              children: [
                TextSpan(
                  text: ' Read More',
                  style: TextStyle(
                    color: greenColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Amount(menuModel: menuModel),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
