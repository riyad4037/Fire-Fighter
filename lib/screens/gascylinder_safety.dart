import 'package:flutter/material.dart';

class GasCylinderSafety extends StatelessWidget {
  const GasCylinderSafety({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                    image: const AssetImage('assets/images/gas_cylender.jpg'),
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
                height: 50,
              ),
              Container(
                child: ListTile(
                  title: Text('গ্যাস সিলিন্ডার দুর্ঘটনা এড়াতে করনীয় \n'),
                  subtitle: Text(
                      '** রান্না শেষে চুলা ও এলপিজি সিলিন্ডারের রেগুলেটরের সুইচ অবশ্যই বন্ধ করতে হবে।\n\n'
                      '** সিলিন্ডার কোনোভাবেই চুলার অথবা আগুনের পাশে রাখবেন না। এতে বিস্ফোরণ ঘটতে পারে।\n\n'
                      '** ঘরে গ্যাসের গন্ধ পেলে দ্রুত দরজা-জানালা খুলে দিন এবং এলপিজি সিলিন্ডারের রেগুলেটর বন্ধ করুন।\n\n'
                      '** চুলা থেকে যথেষ্ট দূরে, বাতাস চলাচল করে এমন স্থানে এলপিজি সিলিন্ডার রাখুন।\n\n'
                      '** রান্না শুরু করার আধা ঘণ্টা আগে রান্নাঘরের দরজা-জানালা খুলে দিন।\n\n'
                      '** রান্নাঘরের উপরে ও নিচে ভেন্টিলেটর রাখুন।\n\n'
                      '** গ্যাসের গন্ধ পেলে ম্যাচের কাঠি জ্বালাবেন না, ইলেকট্রিক সুইচ এবং মোবাইল ফোন অন বা অফ করবেন না।\n\n'
                      '** চুলা সিলিন্ডার থেকে নিচুতে রাখবেন না। কমপক্ষে ৬ ইঞ্চি উপরে রাখুন।\n\n'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
