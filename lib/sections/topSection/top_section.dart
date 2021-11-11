import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:etport/constants.dart';

import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';


class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 750, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.jpg"),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
       width: 1200,
        child:Stack(
          children: [
            LogoAndBlurBox(key: key, size: size),
            Positioned(
              bottom: 0,
                right: 0,
              child:PersonPic(),
            ),
            Positioned(
              bottom: 0,
                child: Menu())
          ],
        )
    ),
    );
  }
}



