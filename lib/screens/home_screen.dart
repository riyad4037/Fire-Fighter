import 'package:firefighter/screens/home_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/auth/controller/auth_countroller.dart';
import '../features/chat/widgets/contacts_list.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  late TabController tabBarController;
  @override
  void initState() {
    super.initState();
    tabBarController = TabController(length: 3, vsync: this);
    WidgetsBinding.instance.addObserver(this);
  }

  void goToSelectContact(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/selectContactScreen',
    );
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        ref.read(authControllerProvider).setUserState(true);
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.detached:
      case AppLifecycleState.paused:
        ref.read(authControllerProvider).setUserState(false);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Transform.rotate(
                  origin: const Offset(30, -60),
                  angle: 2.4,
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 70,
                      top: 40,
                    ),
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        colors: [Colors.deepOrange, Colors.greenAccent],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Fire Fighter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        'Safety is our main priority',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  HomeButtons(
                                      image: 'FireStation.png',
                                      text: 'নিকটবর্তী ফায়ার ষ্টেশন',
                                      color: Colors.cyan.shade900,
                                      navigateName: '/mapSplash'),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  HomeButtons(
                                      image: 'sfty.png',
                                      text: 'সতর্কতা',
                                      color: Colors.deepOrange.shade900,
                                      navigateName: '/seftypge'),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  HomeButtons(
                                      image: 'emergencycontct.png',
                                      text: 'জরুরী যোগাযোগ নাম্বার',
                                      color: Colors.lime.shade900,
                                      navigateName: '/emergencyNumber'),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  HomeButtons(
                                      image: 'complain.png',
                                      text: 'অভিযোগ',
                                      color: Colors.red,
                                      navigateName: '/gasoline'),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  HomeButtons(
                                      image: 'bdfire.png',
                                      text: 'বাংলাদেশ ফায়ার সার্ভিস',
                                      color: Colors.purpleAccent,
                                      navigateName: '/aboutfireservice'),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  HomeButtons(
                                      image: '1.jpeg',
                                      text: 'ফায়ার ফাইটার অ্যাপ',
                                      color: Colors.deepOrange.shade900,
                                      navigateName: '/aboutapp'),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ]),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).pushNamed(
      //       '/selectContactScreen',
      //     );
      //   },
      // ),
    );
  }
}
