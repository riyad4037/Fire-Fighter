import 'package:flutter/material.dart';

class AboutAppPage extends StatelessWidget {
  const AboutAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Stack(
            clipBehavior: Clip.none, alignment: Alignment.center,
            children: [
              Image(
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height/3,
                image: NetworkImage('https://bdbusinessfinder.com/wp-content/uploads/2019/02/Bdbusinessfinder.jpg'),
              ),

              Positioned(
                bottom: -50.0,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.deepOrange[400],
                  backgroundImage: NetworkImage('https://cdn0.iconfinder.com/data/icons/uiux-001-line/32/UI_UX_UIUX_About-512.png'),
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Container(
            child: ListTile(
              title: Text('অ্যাপ সম্পর্কে বিস্তারিত\n'),
              subtitle: Text('Fire Fighter এপ্লিকেশনটি ফায়ার সার্ভিস বাংলাদেশকে সাহায্যের উদ্দেশ্যে নির্মিত। এই এপ্লিকেশনটি মাধ্যমে দেশের সকল ফায়ার সার্ভিস স্টেশনগুলোর যোগাযোগের নাম্বার ও গুগল ম্যাপে স্টেশনের অবস্থান জানা যাবে।'
                  'যেকোনো দূর্ঘটনা ঘটলে ব্যাবহারকারীরা এই এপ্লিকেশনের মাধ্যমে  কাছে ফায়ার স্টেশনে এক ক্লিকেই সাহায্য চাইতে পারবে। এছাড়াও অগ্নি দুর্ঘটনা ও ভূমিকম্প কালীন সময়ে করনীয়, প্রাথমিক চিকিৎসা এবং অগ্নি নির্বাপন বিষয়ে নির্দেশনা পাওয়া যাবে। '
                  'এই এপ্লিকেশনটি নির্মান করেছে বাংলাদেশ আর্মি ইউনিভার্সিটি অফ ইঞ্জিনিয়ারিং এন্ড টেকনোলজী- এর শিক্ষার্থী – \n'
                  '১ / মোঃ ফজলে রাব্বি \n'
                  '২ / মোঃ আবদুল্লাহ আল ফাহাদ \n'
                  '৩ / মোঃ নাজমুস সলেহীন \n'
                  '৪ / মোঃ শাহ আবরার জাহিন \n'
                  '৫ / দিপ্ত নন্দী \n'),
            ),
          )
        ],
      ),
    );
  }
}