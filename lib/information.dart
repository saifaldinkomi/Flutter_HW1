
import 'package:flutter/material.dart';
import 'package:home_work_one/class-information.dart';

class Information extends StatelessWidget {
  final Informationcard Informations;
  const Information({super.key, required this.Informations});
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        
        children: [        
            SizedBox(width: 20),

          Image.asset(
                    Informations.Icon,
                    height: 50,
                    width: 50,
                  ),
          Column(
            children: [
          Text(
            Informations.Name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            Informations.Descriptions,
            style: TextStyle(fontSize: 16),
          ),
          ],
          ),
        ],
      ),
    );
  }
}