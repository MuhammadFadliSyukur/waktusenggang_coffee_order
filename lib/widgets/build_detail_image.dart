import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:waktusenggang_coffee/models/menu_model.dart';
import 'package:waktusenggang_coffee/widgets/back_button.dart';
import 'package:waktusenggang_coffee/widgets/favorite_button.dart';

import 'package:waktusenggang_coffee/widgets/ingtedients_box.dart';
import 'package:waktusenggang_coffee/widgets/theme.dart';

class BuildDetailImage extends StatelessWidget {
  const BuildDetailImage({
    Key key,
    @required this.menuModel,
  }) : super(key: key);

  final MenuModel menuModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 30),
      child: Container(
        height: 490,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(menuModel.detailImage),
          ),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuildBackButton(),
                      BuildFavoriteButton(),
                    ],
                  ),
                ),
                Parent(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              menuModel.name,
                              style:
                                  headerTextStyle.copyWith(color: Colors.white),
                            ),
                            SizedBox(height: 5),
                            Text(
                              menuModel.ingredient,
                              style: TextStyle(color: Colors.white70),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  color: secondColor,
                                ),
                                SizedBox(width: 5),
                                RichText(
                                  text: TextSpan(
                                    text: menuModel.rating,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' (${menuModel.ofBuy})',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(.50),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                IngredientsBox(
                                  ingredient: menuModel.ingredients1,
                                ),
                                SizedBox(width: 16),
                                IngredientsBox(
                                  ingredient: menuModel.ingredients2,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Parent(
                              child: Container(
                                child: Text(
                                  'Medium Roasted',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: greenColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              style: ParentStyle()
                                ..width(102)
                                ..height(20)
                                ..background.color(Colors.white)
                                ..borderRadius(all: 5)
                                ..padding(horizontal: 5, vertical: 3),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  style: ParentStyle()
                    ..background.color(greenColor.withOpacity(.65))
                    ..height(135)
                    ..borderRadius(all: 25)
                    ..margin(bottom: 9)
                    ..padding(all: 20),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
