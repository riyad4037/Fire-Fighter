import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firefighter/app_splash.dart';
import 'package:firefighter/decission_tree.dart';
import 'package:firefighter/features/auth/screen/login_screen.dart';
import 'package:firefighter/features/auth/screen/otp_screen.dart';
import 'package:firefighter/features/auth/screen/user_information.dart';
import 'package:firefighter/features/landing/Landing.dart';
import 'package:firefighter/firebase_options.dart';
import 'package:firefighter/home_slider.dart';
import 'package:firefighter/screens/about_app_screen.dart';
import 'package:firefighter/screens/about_devs.dart';
import 'package:firefighter/screens/about_fireservice.dart';
import 'package:firefighter/screens/earthquack_safety.dart';
import 'package:firefighter/screens/emergency_message_send_screen.dart';
import 'package:firefighter/screens/emergency_number.dart';
import 'package:firefighter/screens/firealert_page.dart';
import 'package:firefighter/screens/gascylinder_safety.dart';
import 'package:firefighter/screens/home_screen.dart';
import 'package:firefighter/screens/safety_page.dart';
import 'package:firefighter/map_spash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/chat/screens/mobile_chat_screen.dart';
import 'features/select_contacts/screens/select_contacts_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fire Fighter',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const SplashScreen(),
      routes: {
        '/homeSlider': (context) => const HomeSlider(),
        '/loginScreen': (context) => const LoginScreen(),
        '/otpScreen': (context) => const OtpScreen(),
        '/selectContactScreen': (context) => const SelectContactsScreen(),
        '/userInformationScreen': (context) => const UserInformationScreen(),
        '/chatScreen': (context) => const MobileChatScreen(),
        '/emergencySendScreen': (context) => const EmergencySentScreen(),
        '/aboutUs': (context) => const AboutDeveloprs(),
        '/safety': (context) => const SafetyPage(),
        '/fireAlert': (context) => const FireAlertPage(),
        '/earthquacksafety': (context) => const EarthQuackSafety(),
        '/gascylindersafety': (context) => const GasCylinderSafety(),
        '/aboutApp': (context) => const AboutAppPage(),
        '/mapSplash': (context) => const MapSplashScreen(),
        '/earthquack': (context) => const EarthQuackSafety(),
        '/aboutapp': (context) => const AboutAppPage(),
        '/firealert': (context) => const FireAlertPage(),
        '/gasoline': (context) => const GasCylinderSafety(),
        '/seftypge': (context) => const SafetyPage(),
        '/aboutfireservice': (context) => const AboutFireService(),
        '/emergencyNumber': (context) => const EmergencyNumber(),
      },
    );
  }
}
