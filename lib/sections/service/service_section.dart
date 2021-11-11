import 'package:flutter/material.dart';
import 'package:etport/components/section_title.dart';
import 'package:etport/constants.dart';
import 'package:etport/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFF660099),
            title: "Programlama Dilleri",
            subTitle: "İlgilendiğim",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                services.length, (index) => ServiceCard(index: index)),
          )
        ],
      ),
    );
  }
}