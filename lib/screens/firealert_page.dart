import 'package:flutter/material.dart';

class FireAlertPage extends StatelessWidget {
  const FireAlertPage({super.key});

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
                height: 50,
              ),
              Container(
                child: ListTile(
                  title: Text('অগ্নি দূর্ঘটনা মোকাবিলায় করনীয়\n'),
                  subtitle: Text(
                      '** অসাবধানতাই অগ্নিকাণ্ডের প্রধান কারণ। অগ্নি প্রতিরোধে সচেতন হোন।\n\n'
                      '** রান্নার পর চুলার আগুন নিভিয়ে ফেলুন। গ্যাসের চুলা হলে ফু দিয়ে না নিভিয়ে রান্না শেষ হলে চুলার চাবি ভাল করে বন্ধ করুন।\n\n'
                      '** অগ্নি নিরাপত্তার জন্য সব সময় আপনার ভবনে অগ্নি নির্বাপণ যন্ত্র, দুই বালতি পানি বা বালু মজুদ রাখুন।\n\n'
                      '** ছোট ছেলে-মেয়েদের আগুন নিয়ে খেলা থেকে বিরত রাখুন।\n\n'
                      '** বৈদ্যুতিক মেইন সুইচ বাধাহীন ভাবে প্রবেশ করা যায় এমন স্থানে স্থাপন করুন।দূর্ঘটনার শুরুতেই মেইন সুইচ বন্ধ করুন।\n\n'
                      '** ব্যবসা প্রতিষ্ঠানে প্রচলিত নিয়ম অনুসারে অগ্নি নির্বাপক যন্ত্রপাতি স্থাপন করুন।\n\n'
                      '** গ্যাসের চুলা জ্বালানো আগে অবশ্যই রান্না ঘরের দরজা জানালা খুলে দিন।\n\n'
                      '** অভিজ্ঞ ইলেক্ট্রিশিয়ান দ্বারা নিয়মিত ভবনের বৈদ্যুতিক কেবল ও ফিটিংস পরীক্ষা করুন।\n\n'
                      '** প্রতিটি শিল্পকারখানা ও ভবনে অগ্নি প্রতিরোধ ও নির্বাপণ আইন ২০০৩ অনুযায়ী অগ্নি প্রতিরোধ ব্যবস্থা বাস্তবায়ন করুন।\n'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
