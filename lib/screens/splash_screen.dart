import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:waktusenggang_coffee/screens/main_screen.dart';
import 'package:waktusenggang_coffee/widgets/theme.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgroud.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 150, bottom: 70, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Waktu Senggang\nCoffee Shop',
                    style: headerTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'there are times in life, you want to be\nalone and enjoy a cup of coffee',
                    style: subTitleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Parent(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 87, vertical: 17),
                      child: Txt(
                        'ORDER NOW',
                        style: TxtStyle()
                          ..textColor(Colors.white)
                          ..fontSize(14)
                          ..fontWeight(FontWeight.w600)
                          ..textAlign.center(),
                      ),
                    ),
                    style: ParentStyle()
                      ..background.color(greenColor)
                      ..borderRadius(all: 100)
                      ..ripple(true, splashColor: primaryColor),
                    gesture: Gestures()
                      ..onTap(() {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(),
                          ),
                        );
                      }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
