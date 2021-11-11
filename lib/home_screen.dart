import 'dart:html';

import 'package:etport/constants.dart';
import 'package:etport/sections/about/about_section.dart';
import 'package:etport/sections/contact/contact_section.dart';
import 'package:etport/sections/service/service_section.dart';
import 'package:flutter/material.dart';
import 'package:etport/sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding*2),
            AboutSection(),
            ServiceSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(),
            SizedBox(
              height:500,
            )

          ],
        ),
      ),
    );
  }
}