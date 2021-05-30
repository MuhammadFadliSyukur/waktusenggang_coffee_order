import 'package:flutter/material.dart';
import 'package:waktusenggang_coffee/models/menu_model.dart';
import 'package:waktusenggang_coffee/widgets/build_detail_image.dart';
import 'package:waktusenggang_coffee/widgets/description_detail.dart';
import 'package:waktusenggang_coffee/widgets/theme.dart';

class DetailScreen extends StatelessWidget {
  final MenuModel menuModel;

  DetailScreen({this.menuModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BuildDetailImage(menuModel: menuModel),
            SizedBox(height: 20),
            DescriptionDetail(menuModel: menuModel)
          ],
        ),
      ),
    );
  }
}
