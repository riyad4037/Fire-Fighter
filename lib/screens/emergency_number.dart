import 'package:flutter/material.dart';

class EmergencyNumber extends StatelessWidget {
  const EmergencyNumber({super.key});

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
                    image: const AssetImage(
                        'assets/images/emergency_number_background.png'),
                  ),
                  Positioned(
                    bottom: -50.0,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.deepOrange[400],
                      backgroundImage: const AssetImage(
                          'assets/images/emergency_number_logo.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: ListTile(
                  title: Text('জরুরি মোবাইল নাম্বার সমূহ\n'),
                  subtitle: Text(
                      '** ঢাকা নিয়ন্ত্রণ কক্ষ	  ০২-২২৩৩৫৫৫৫৫, ০১৭৩০-৩৩৬৬৯৯, ০১৭১৩-০৩৮১৮১-২\n\n'
                      '** চট্টগ্রাম নিয়ন্ত্রণ কক্ষ   ০২৩৩৩৩১১১৫৩, ০২৩৩৩৩১১১৫২, ০২৩৩৩৩৩১১৫০,  ০১৭৩০-৩৩৬৬৬৬\n\n'
                      '** খুলনা নিয়ন্ত্রণ কক্ষ   ০২৪৭৭৭-০০৩৩৩, ০২৪৭৭৭-০০৩৩৪, ০২৪৭৭৭-০০৩৩৫, ০২৪৭৭৭-০০৩৩৬, ০২৪৭৭৭-০০৩৩৭, ০১৭৩৩-০৬২২০৯\n\n'
                      '** রাজশাহী নিয়ন্ত্রণ কক্ষ   ০৭২১-৭৭৪২২৪, ০৭২১-৭৭৪২৯৩, ০১৭৩০-৩৩৬৬৫৫\n\n'
                      '** বরিশাল নিয়ন্ত্রণ কক্ষ   ০৪৩১-২১৭৭০১২-৫, ০৪৩১-৬৫২২২, ০১৯৮৩-৮৮৬৬৭৭, ০১৮৭৮-০০১১১১\n\n'
                      '** সিলেট নিয়ন্ত্রণ কক্ষ   ০২৯৯৬৬৪৩৩৩৯, ০২৯৯৬৬৪৩৩৫৬, ০২৯৯৬৬৪৩৪৫৮, ০২৯৯৬৬৪৩৩৯৪, ০২৯৯৬৬৪৩৩৯৬, ০১৭৩০-৩৩৬৬৪৪\n\n'
                      '** রংপুর নিয়ন্ত্রণ কক্ষ   ০২৫৮৯৯৬২২২২, ০২৫৮৯৯৬২২২৬, ০২৫৮৯৯৬২২২৮,  ০১৭৩২-৭০৭১৭২\n\n'
                      '** ময়মনসিংহ  নিয়ন্ত্রণ কক্ষ 	   ০২৯৯৬৬৭১৪৪৬ , ০১৭৩০-০০২৩৫৩, ০১৯৬৮-৮৮১১১৯\n\n'
                      'ফায়ার সার্ভিস ও সিভিল ডিফেন্স সম্পর্কিত সেবা পেতে কল করুণ: হটলাইন নম্বর ১৬১৬৩\n\n'
                      '০২-২২৩৩৫৫৫৫৫, ০১৭৩০-৩৩৬৬৯৯, ০১৭১৩-০৩৮১৮১-২ নম্বরে।\n\n'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
