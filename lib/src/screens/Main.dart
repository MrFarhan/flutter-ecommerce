import 'package:ecommerce/src/screens/Alert.dart';
import 'package:ecommerce/src/screens/Brand.dart';
import 'package:ecommerce/src/screens/Gamification.dart';
import 'package:ecommerce/src/screens/Home.dart';
import 'package:ecommerce/src/screens/Wallet.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const BrandScreen(),
    const GamificationScreen(),
    const WalletScreen(),
    const AlertScreen(),
  ];
  final screenTitle = [
    "Home",
    "Brand",
    "Gamification",
    "Wallet",
    "Alert",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(screenTitle[currentIndex]),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Brands',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Gamification',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Wallet',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Alerts',
              ),
            ]),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    IconButton(
                      iconSize: 72,
                      icon: Icon(Icons.cancel),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text('Explore exciting deals around you.')
                  ],
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: Text("All Deals"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Categories"),
              ),
              ListTile(
                title: Text("Wishlist"),
              ),
              ListTile(
                title: Text("My Reviews"),
              ),
              ListTile(
                title: Text("Settings"),
              ),
            ],
          ),
        ));
  }
}
