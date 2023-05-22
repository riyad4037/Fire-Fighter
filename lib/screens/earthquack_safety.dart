import 'package:flutter/material.dart';

class EarthQuackSafety extends StatelessWidget {
  const EarthQuackSafety({super.key});

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
                  title: Text('ভুমিকম্পের সময় করনীয়\n'),
                  subtitle: Text('** ভূকম্পন অনুভূত হলে আতঙ্কিত হবেন না।\n\n'
                      '** ভূকম্পনের সময় বিছানায় থাকলে বালিশ দিয়ে মাথা ঢেকে টেবিল, ডেস্ক বা শক্ত কোন আসবাবপত্রের নিচে আশ্রয় নিন।\n\n'
                      '** রান্না ঘরে থাকলে গ্যাসের চুলা বন্ধ করে দ্রুত বেরিয়ে আসুন।\n\n'
                      '** শিক্ষা প্রতিষ্ঠানে অবস্থানকালে স্কুল ব্যাগ মাথায় দিয়ে শক্ত বেঞ্চ অথবা শক্ত টেবিলের নিচে আশ্রয় নিন।\n\n'
                      '** ঘরের বাইরে থাকলে গাছ, উঁচু বাড়ি, বৈদ্যুতিক খুঁটি থেকে দুরে খোলাস্থানে আশ্রয় নিন।\n\n'
                      '** গার্মেন্টস ফ্যাক্টরী, হাসপাতাল, মার্কেট ও সিনেমা হলে থাকলে বের হওয়ার জন্য দরজার সামনে ভিড় কিংবা ধাক্কাধাক্কি না করে দুহাতে মাথা ঢেকে বসে পড়ুন।\n\n'
                      '** ভাংগা দেয়ালের নিচে চাপা পড়লে বেশি নড়া চড়ার চেষ্টা করবেন না। কাপড় দিয়ে মুখ ঢেকে রাখুন, যাতে ধুলা বালি শ্বাস নালিতে না ঢোকে।\n\n'
                      '** একবার কম্পন হওয়ার পর আবারও কম্পন হতে পারে। তাই সুযোগ বুঝে বের হয়ে খালি জায়গায় আশ্রয় নিন।\n\n'
                      '** উপর তলায় থাকলে কম্পন বা ঝাঁকুনি না থামা পর্যন্ত অপেক্ষা করতে হবে; তাড়াহুড়ো করে লাফ দিয়ে বা লিফট ব্যবহার করে নামা থেকে বিরত থাকুন।\n\n'
                      '** কম্পন বা ঝাঁকুনি থামলে সিঁড়ি দিয়ে দ্রুত বেরিয়ে পড়ুন এবং খোলা আকাশের নিচে অবস্থান নিন।\n\n'
                      '** গাড়ীতে থাকলে ওভার ব্রীজ, ফ্লাই ওভার, গাছ ও বৈদ্যুতিক খুটি থেকে দূরে গাড়ী থামান। ভূকম্পন না থামা পর্যন্ত গাড়ীর ভিতের থাকুন।\n\n'
                      '** ব্যাটারীচালিত রেডিও, টর্চলাইট, পানি এবং প্রাথমিক চিকিৎসার সরঞ্জাম বাড়িতে রাখুন।\n\n'
                      '** বিল্ডিং কোড মেনে ভবন নির্মাণ করুন।\n\n'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
