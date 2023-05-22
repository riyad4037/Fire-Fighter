import 'package:flutter/material.dart';

class SafetyPage extends StatelessWidget {
  const SafetyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Image(
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  image: const AssetImage('assets/images/firefighter.jpg'),
                ),
                Positioned(
                  bottom: -50.0,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.deepOrange[400],
                    backgroundImage:
                        const AssetImage('assets/images/safety_logo.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/firealert');
                },
                icon: Icon(
                  Icons.safety_check,
                ),
                label: Text('অগ্নি দূর্ঘটনা মোকাবিলা'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/earthquack');
                },
                icon: Icon(
                  Icons.safety_check,
                ),
                label: Text('ভুমিকম্পের সময় করনীয়'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/gasoline');
                },
                icon: Icon(
                  Icons.safety_check,
                ),
                label: Text('সিলিন্ডার দুর্ঘটনা এড়ানো'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
