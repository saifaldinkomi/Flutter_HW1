import 'package:flutter/material.dart';
import 'package:home_work_one/card.dart';
import 'package:home_work_one/class-information.dart';
import 'package:home_work_one/information.dart';
import 'package:home_work_one/services.dart';

List<Informationcard> informations = [
  Informationcard(
    Name: "Address",
    Descriptions: "This is an address",
    Icon: "images/location.png",
  ),
  Informationcard(
    Name: "privacy",
    Descriptions: "This is an privacy",
    Icon: "images/privacy.png",
  ),
  Informationcard(
    Name: "general",
    Descriptions: "This is an general",
    Icon: "images/general.png",
  ),
  Informationcard(
    Name: "notifications",
    Descriptions: "This is an notifications",
    Icon: "images/notifications.png",
  ),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center'),
      ),
      body: ListView(
        children: [
          Cards(number1: "846",word1: "Cotlect",number2: "51",word2: "Attention",number3: "267",word3: "Track",number4: "39",word4: "Coupons",description: "trendsetter",name: "Saifaldin komi",image: "images/person.jpg",),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                Service(icon: "images/Wallet.png", name: "Wallet"),
                Service(icon: "images/Delivary.png", name: "Delivary"),
                Service(icon: "images/message.png", name: "Message"),
                Service(icon: "images/service.png", name: "Service"),
              ],
            ),
          ),
          ListView.builder(
            itemCount: informations.length,
            shrinkWrap:
                true, // Ensures the ListView fits inside another ListView
            physics:
                NeverScrollableScrollPhysics(), // Prevents internal scrolling
            itemBuilder: (context, index) {
              return Container(
                color: const Color.fromARGB(255, 66, 66, 66),
                child: Row(
                  children: [
                    Information(
                      Informations: informations[index],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
