import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:waktusenggang_coffee/models/menu_model.dart';
import 'package:waktusenggang_coffee/screens/detail_screen.dart';
import 'package:waktusenggang_coffee/widgets/theme.dart';

class MenuCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Special For You',
            style: titleTextStyle.copyWith(fontSize: 20, color: greenColor),
          ),
        ),
        SizedBox(height: 20),
        Container(
          height: 310,
          width: 200,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              MenuModel menuModel = menuModelList[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 5, left: 20),
                child: Parent(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(menuModel.image),
                            Positioned(
                              right: 5,
                              top: 2,
                              child: Parent(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star_rounded,
                                        size: 16,
                                        color: secondColor,
                                      ),
                                      SizedBox(width: 2),
                                      Text(
                                        menuModel.rating,
                                        style: subTitleTextStyle.copyWith(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                style: ParentStyle()
                                  ..width(50)
                                  ..height(22)
                                  ..background
                                      .color(greenColor.withOpacity(.75))
                                  ..borderRadius(bottomLeft: 15, topRight: 15),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                menuModel.name,
                                style: headerTextStyle.copyWith(fontSize: 18),
                              ),
                              SizedBox(height: 2),
                              Text(menuModel.ingredient,
                                  style: subTitleTextStyle),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: '\$ ',
                                      style: TextStyle(
                                        color: greenColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: menuModel.price.toString(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Parent(
                                    child: Container(
                                        child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                    style: ParentStyle()
                                      ..width(30)
                                      ..height(30)
                                      ..background.color(greenColor)
                                      ..padding(horizontal: 5, vertical: 1)
                                      ..borderRadius(all: 12),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  style: ParentStyle()
                    ..width(200)
                    ..height(310)
                    ..padding(left: 3, right: 3, top: 3)
                    ..borderRadius(all: 15)
                    ..background.color(Color(0XFFBBD9D7))
                    ..boxShadow(
                      color: Color(0xff888888).withOpacity(.25),
                      offset: Offset(3, 3),
                      blur: 4,
                    ),
                  gesture: Gestures()
                    ..onTap(
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailScreen(menuModel: menuModel),
                          ),
                        );
                      },
                    ),
                ),
              );
            },
            itemCount: menuModelList.length,
          ),
        ),
      ],
    );
  }
}
