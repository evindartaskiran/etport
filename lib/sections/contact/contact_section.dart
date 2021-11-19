import 'package:etport/sections/contact/components/contactbox.dart';
import 'package:flutter/material.dart';
import 'package:etport/components/default_button.dart';
import 'package:etport/components/section_title.dart';
import 'package:etport/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/socal_card.dart';


class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
// this height only for demo
// height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFF),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "İletişim Bilgileri",
            subTitle: "Bana bu iletişim bilgilerinden ulaşabilirsiniz",
            color: Color(0xFF660099),
          ),
          ContactBox()
        ],
      ),
    );
  }
}



class ContactBoxState extends State<ContactBox> {
  Future link( String link) async
  {
    if(await canLaunch(link)){
      await launch(link);
    }
    else {
      debugPrint('EROR');
    }
    
  }

//iletişim bölümündeki beyaz sayfa
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                color: Color(0xFF967BB6),
                iconSrc: "assets/images/linkedin.png",
                name: 'Linkedinden Ulaşabilirsiniz',
                press: () {
             link('https://www.linkedin.com/in/evindar-ta%C5%9Fk%C4%B1ran/');
                },
              ),
              SocalCard(
                color: Color(0xFF967BB6),
                iconSrc: "assets/images/instagramlogo.png",
                name: 'İnstagramdan ulaşabilirsiniz',
                press: () {
                  link('https://www.instagram.com/evintaskiran_/');
                }
                  ),


              SocalCard(
                color: Color(0xFF967BB6),
                iconSrc: "assets/images/github1.png",
                name: 'Githubtan ulaşabilirsiniz',
                press: () {
                  link('https://github.com/');
                },
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Adınız",
                hintText: "Adınızı giriniz",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Email Adresi",
                hintText: "Email Adresinizi Giriniz",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Proje Türü",
                hintText: "Proje Türünü Giriniz",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Proje Bütçesi",
                hintText: "Proje Bütçesini Giriniz",
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Açıklama",
                hintText: "Biraz Açıklama Yazarmısınız",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/img.png",
                text: "Bana ulaşabilirsiniz!",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}