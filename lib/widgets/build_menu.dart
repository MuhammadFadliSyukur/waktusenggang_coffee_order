import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:waktusenggang_coffee/widgets/theme.dart';

class BuildMenu extends StatelessWidget {
  final Widget menu;

  BuildMenu({this.menu});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [menu],
              ),
            ),
          ),
          SizedBox(height: 25),
          Text(
            'Special for you',
            style: titleTextStyle.copyWith(fontSize: 20, color: greenColor),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Parent(
              child: Container(
                child: Row(
                  children: [
                    Image.asset('assets/special_for_you1.png'),
                    SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '5 Coffee Beens You\nMust Try!',
                          style: titleTextStyle.copyWith(
                              color: greenColor, fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'When you first started\ndrinking coffee, you probably\ndidn’t care about ... ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff687a79),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              style: ParentStyle()
                ..width(double.infinity)
                ..height(133)
                ..background.color(Color(0xffbbd9d7))
                ..padding(all: 10)
                ..borderRadius(all: 15),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
