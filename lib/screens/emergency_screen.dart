import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/utils/utils.dart';
import '../features/chat/controller/chat_controller.dart';
import '../features/models/user_model.dart';

final firestore = FirebaseFirestore.instance;

class EmergencyScreen1 extends ConsumerStatefulWidget {
  const EmergencyScreen1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EmergencyScreen1State();
}

class _EmergencyScreen1State extends ConsumerState<EmergencyScreen1> {
  void sendTextMessage(String message, String recieverUserId) async {
    ref.read(chatControllerProvider).sendTextMessage(
          context,
          message.trim(),
          recieverUserId,
        );
    print('I am Here!');
  }

  void emergencyNumberSelect(BuildContext context) async {
    try {
      var userCollection = await firestore.collection('users').get();
      bool isFound = false;

      for (var document in userCollection.docs) {
        var userData = UserModel.fromMap(document.data());
        String emergencyPhoneNumber = '01755973848';
        String selectedPhoneNum = emergencyPhoneNumber.replaceAll(
          ' ',
          '',
        );
        if (selectedPhoneNum.substring(selectedPhoneNum.length - 10) ==
            userData.phoneNumber.substring(userData.phoneNumber.length - 10)) {
          isFound = true;
          String emergencyMessage = 'I am in denger!! Please HELP ME!';
          sendTextMessage(
            emergencyMessage,
            userData.uid,
          );
          Navigator.of(context).pushNamed(
            '/emergencySendScreen',
          );
        }
      }

      if (!isFound) {
        showSnackBar(
          context: context,
          content: 'This number does not exist on this app.',
        );
      }
    } catch (e) {
      showSnackBar(context: context, content: e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.shade100,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Transform.rotate(
                origin: const Offset(30, -60),
                angle: 2.4,
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 0,
                    top: 0,
                  ),
                  height: MediaQuery.of(context).size.height * 0.6,
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
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      IconButton(
                          icon: const Icon(
                            Icons.emergency_rounded,
                            color: Colors.amber,
                          ),
                          iconSize: 100,
                          onPressed: () {
                            emergencyNumberSelect(context);
                          }),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "জরুরী সাহায্য \n চান",
                        style: TextStyle(
                          color: Colors.brown,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
