import 'package:firefighter/screens/about_app_screen.dart';
import 'package:firefighter/screens/emergency_screen.dart';
import 'package:firefighter/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'screens/emergency_screen.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int _selectedIndex = 0;

  PageController pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildHeader(context),
              buildMenuitems(context),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Fire Fighter',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          PopupMenuButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: const Text(
                    'About Us',
                  ),
                  onTap: () {
                    Future(
                      () => Navigator.of(context).pushNamed('/aboutUs'),
                    );
                  }
                  // Future(
                  //   () => Navigator.pushNamed(
                  //       context, CreateGroupScreen.routeName),
                  // ),
                  )
            ],
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
        children: const [
          HomeScreen(),
          EmergencyScreen1(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.emergency,
            ),
            label: 'Emergency',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        iconSize: 30,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }

  buildHeader(BuildContext context) => Container(
        color: Colors.grey.shade300,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          children: [
            Image.asset('assets/images/1.jpeg'),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Fire Fighter',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            )
          ],
        ),
      );

  buildMenuitems(BuildContext context) => Container(
        color: Colors.grey.shade300,
        padding: EdgeInsets.all(20),
        child: Wrap(
          runSpacing: 15,
          children: [
            ListTile(
                leading: Icon(Icons.home_outlined),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed('/homeSlider');
                }),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('About Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/aboutApp');
              },
            ),
            const Divider(
              color: Colors.deepOrangeAccent,
            ),
            ListTile(
              leading: Icon(Icons.safety_check_outlined),
              title: Text('Safety'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/safety');
              },
            ),
            ListTile(
              leading: Icon(Icons.integration_instructions_outlined),
              title: Text('Instruction'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/fireAlert');
              },
            ),
            ListTile(
              leading: Icon(Icons.map_outlined),
              title: Text('Detect in map'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/mapSplash');
              },
            ),
          ],
        ),
      );
}
