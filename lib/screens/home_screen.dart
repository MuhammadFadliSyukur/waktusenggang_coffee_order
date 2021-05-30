import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:waktusenggang_coffee/widgets/menu_card.dart';
import 'package:waktusenggang_coffee/widgets/recomended_menu_card.dart';
import 'package:waktusenggang_coffee/widgets/theme.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu, color: greenColor),
                          Image.asset('assets/user.png', width: 45)
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Find the best\ncoffee for you',
                        style: headerTextStyle),
                    SizedBox(height: 20),
                    Parent(
                      child: Container(
                        child: TextFormField(
                          controller: textController,
                          decoration: InputDecoration(
                            hintText: 'Find your coffee',
                            hintStyle: subTitleTextStyle,
                            prefixIcon: Icon(Icons.search, size: 20),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                      style: ParentStyle()
                        ..width(double.infinity)
                        ..height(40)
                        ..background.color(softWhite)
                        ..padding(horizontal: 10)
                        ..borderRadius(all: 20)
                        ..margin(right: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              MenuCard(),
              SizedBox(height: 25),
              RecomendedMenuCard(),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
