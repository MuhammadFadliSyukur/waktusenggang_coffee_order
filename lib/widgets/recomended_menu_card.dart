import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:waktusenggang_coffee/widgets/theme.dart';

class RecomendedMenuCard extends StatelessWidget {
  const RecomendedMenuCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Recomended For You',
            style: titleTextStyle.copyWith(fontSize: 20, color: greenColor),
          ),
          SizedBox(height: 20),
          Parent(
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
        ],
      ),
    );
  }
}
