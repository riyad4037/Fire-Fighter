import 'package:flutter/material.dart';

class HomeButtons extends StatelessWidget {
  late String image;
  late String text;
  late Color color;

  HomeButtons({required this.image, required this.text,required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
              height: 120,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black38,
              ),
              child: Column(
                children: [
                  Image.asset(
                      'assets/images/FireStation.png',
                      width: 90,
                      height: 90,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'নিকটবর্তী ফায়ার স্টেশন',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ]
              ),
          ),
          onTap: (){

          },
    );
  }
}