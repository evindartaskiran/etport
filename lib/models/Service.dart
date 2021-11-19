import 'package:flutter/material.dart';

class Service {
  final int? id;
  final String title, image;
  final Color? color;

  Service({this.id, required this.title, required this.image, this.color});
}
//ilgilendiğim programlama dilleri bölümü
List<Service> services = [
  Service(
    id: 1,
    title: "Java",
    image: "assets/images/java.png",
    color: Color(0xFF8000bf),
  ),
  Service(
    id: 2,
    title: "C++",
    image: "assets/images/C.png",
    color: Color(0xFF8000bf),
  ),
  Service(
    id: 3,
    title: "C#",
    image: "assets/images/csharp.png",
    color: Color(0xFF8000bf),
  ),
  Service(
    id: 4,
    title: "Flutter",
    image: "assets/images/flutter.jpg",
    color: Color(0xFF8000bf),
  ),
];