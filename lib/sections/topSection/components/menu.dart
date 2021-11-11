import 'package:flutter/material.dart';
import 'package:etport/constants.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int? selectedIndex=0;
  int hoverIndex=0;
  List<String>menuItems=[
    "Organize Çalışabilme",
    "Takım çalışmasına yatkın",
    "Kendini Geliştirme İsteği Yüksek",
    "Sorumluluk Alabilen"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:BoxConstraints(maxWidth: 1200),
      height: 100,
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius:BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),boxShadow: [kDefaultShadow],),
      child:Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children:List.generate(
          menuItems.length,
              (index)=>Text(menuItems[index]),
        ),
      ),
    );
  }

}


