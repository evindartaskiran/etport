import 'package:etport/sections/about/components/about_section_text.dart';
import 'package:etport/sections/about/components/experience_card.dart';
import 'package:flutter/material.dart';
import 'package:etport/constants.dart';

import 'components/about_text_with_sign.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1150),
      child: Row(
          children:[
       AboutTextWithSign(),
          Expanded(
              child:AboutSectionText(
                text:
                "01.06.1997 Mersinde doğdum.İlk öğretim ve orta okulu Mehmet Dağlı İlkokulunda okudum.Liseyi Mersin Salim Yılmaz Anadolu lisesinde okudum.Batman Üniversitesi  Bilgisayar mühendisliği bölümünden 2020 yılınde mezun oldum.",
            ),
          ),
            ExperienceCard(numOfExp: "08"),
            Expanded(
              child:AboutSectionText(
                text:
                "Kurumunuzun ilgili pozisyonu için kurum politikalarına ve ahlakına uygun Öğrendiğimbilgilerim ve deneyimleri pratik de uygulayabilmemi sağlayacak projelerde çalışmak tecrübeli ve değerli yötecilerle birlikte çalışma imkanı bularakvar oaln bilgi dağarcığımı daha da geliştirmek ve bana verilen görevi  en iyi şekilde yerine getirerek  sizlere değer kazandıracağımı düşünüyorum.",
              ),
              ),
    ],
      ),
    );
    }
}
