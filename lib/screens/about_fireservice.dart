import 'package:flutter/material.dart';

class AboutFireService extends StatelessWidget {
  const AboutFireService({super.key});

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
                    image: const AssetImage('assets/images/fire_service.jpg'),
                  ),
                  Positioned(
                    bottom: -50.0,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.deepOrange[400],
                      backgroundImage:
                          const AssetImage('assets/images/FireStation.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: ListTile(
                  title: Text('ফায়ার সার্ভিস সম্পর্কে বিস্তারিত\n'),
                  subtitle: Text(
                      'ফায়ার সার্ভিস ও সিভিল ডিফেন্স অধিদপ্তর গণপ্রজাতন্ত্রী বাংলাদেশ সরকারের স্বরাষ্ট্র মন্ত্রণালয়াধীন একটি জরুরি সেবামূলক প্রতিষ্ঠান। এ প্রতিষ্ঠানের সকল কার্যক্রম জনগণের সেবায় নিবেদিত।'
                      ' তৎকালীন বৃটিশ সরকার অবিভক্ত ভারতে ১৯৩৯-৪০ অর্থ সালে ফায়ার সার্ভিস সৃষ্টি করেন। বিভক্তিকালে আঞ্চলিক পর্যায়ে কলকাতা শহরের জন্য কলকাতা ফায়ার সার্ভিস এবং অবিভক্ত বাংলায় বাংলার জন্য (কলকাতাবাদে) বেঙ্গল ফায়ার সার্ভিস সৃষ্টি করেন।'
                      ' ১৯৪৭ সনে এ অঞ্চলের ফায়ার সার্ভিসকে পূর্ব পাকিস্তান ফায়ার সার্ভিস নামে অভিহিত করা হয়। অনুরূপভাবে দ্বিতীয় মহাযুদ্ধের সময় ভারতে বে-সামরিক প্রতিরক্ষা বিভাগ প্রাথমিক পর্যায়ে Air Raid Precautions (ARP) এবং পরবর্তী পর্যায়ে ১৯৫১ সনে আইনি প্রক্রিয়ায় সিভিল ডিফেন্স অধিদপ্তর সৃজিত হয়।'
                      ' কর্মব্যবস্থাপনার লক্ষ্যে সড়ক ও জনপথ বিভাগের অধীন রেসকিউ বিভাগ নামে ১টি বিভাগ সৃষ্টি হয়।\n\n'
                      '১৯৮১ সালের ৯ই এপ্রিল তৎকালীন ফায়ার সার্ভিস পরিদপ্তর ও সিভিল ডিফেন্স অধিদপ্তর সরকারি প্রজ্ঞাপন অনুসারে একীভূত হয়ে ফায়ার সার্ভিস ও সিভিল ডিফেন্স অধিদপ্তর প্রতিষ্ঠিত হয়।'
                      ' পরবর্তীতে সড়ক ও জনপথ বিভাগের অধীন রেসকিউ বিভাগ, ফায়ার সার্ভিস ও সিভিল ডিফেন্স অধিদপ্তরে অর্ন্তভুক্ত হয়।\n\n'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
