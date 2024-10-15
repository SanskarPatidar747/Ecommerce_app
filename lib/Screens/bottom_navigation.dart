import 'package:ecommerse_app/Screens/profile_page_screen.dart';
import 'package:flutter/material.dart';

import 'bag_screen.dart';
import 'home_page_screen.dart';
import 'orders_screen.dart';

class BottomNavigaton extends StatefulWidget {
  const BottomNavigaton({super.key});

  @override
  State<BottomNavigaton> createState() => _BottomNavigatonState();
}

class _BottomNavigatonState extends State<BottomNavigaton> {
  int _currIndex = 0;
  List screenList = [HomePageScreen(),OrdersScreen(),BagScreen(),ProfilePageScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_outlined),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
          //type: BottomNavigationBarType.shifting,
          currentIndex: _currIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          iconSize: 24,
          onTap: _onItemTapped,
          elevation: 5,
          backgroundColor:Colors.white,
      ),
      body: screenList[_currIndex],
    );
  }
     void _onItemTapped(int value) {
       setState(() {
         _currIndex = value;
       });
     }
}
