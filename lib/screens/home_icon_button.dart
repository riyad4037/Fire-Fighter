import 'package:flutter/material.dart';

Color? colors;

class HomeButtons extends StatelessWidget {
  final String image;
  final String text;
  final Color color;
  final String navigateName;

  HomeButtons({
    required this.image,
    required this.text,
    required this.color,
    required this.navigateName,
  });

  @override
  Widget build(BuildContext context) {
    colors = color;
    return GestureDetector(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.22,
        width: MediaQuery.of(context).size.height * 0.23,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/$image',
                width: 90,
                height: 90,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ]),
      ),
      onTap: () {
        Navigator.of(context).pushNamed('$navigateName');
      },
    );
  }
}
