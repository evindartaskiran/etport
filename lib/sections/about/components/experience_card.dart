import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key,
    required this.numOfExp,
  }) : super(key: key);

  final String numOfExp;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
            SizedBox(height: kDefaultPadding / 2),
            Image.asset("assets/images/logo.png")
        ],
        ),
      ],
      ),
    );
  }
}