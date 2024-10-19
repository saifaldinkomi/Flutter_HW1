import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String number1;
  final String word1;
  final String number2;
  final String word2;
  final String number3;
  final String word3;
  final String number4;
  final String word4;

  const Cards({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.number1,
    required this.word1,
    required this.number2,
    required this.word2,
    required this.number3,
    required this.word3,
    required this.number4,
    required this.word4,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue, // Setting the background color
          borderRadius: BorderRadius.circular(20), // Rounded corners
        ),
        padding: const EdgeInsets.all(20), // Padding inside the container
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    image,
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.cover, // Ensuring the image fits well inside the circle
                  ),
                ),
                const SizedBox(width: 10), // Space between image and text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.white70, // Lighter text for description
                      ),
                    ),
                  ],
                ),
                const Spacer(), // Push the edit icon to the right
                Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 18,
                ),
              ],
            ),
            const SizedBox(height: 20), // Space between rows
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      number1,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      word1,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      number2,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      word2,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      number3,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      word3,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      number4,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      word4,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 