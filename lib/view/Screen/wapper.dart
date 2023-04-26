import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:olx/view/Screen/adds_list.dart';
import 'package:olx/view/Screen/chat.dart';
import 'package:olx/view/Screen/home.dart';
import 'package:olx/view/Screen/myaccount.dart';
import 'package:olx/view/Screen/new_adds.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class MyNavItem {
  final String title;
  final IconData icon;

  const MyNavItem({required this.title, required this.icon});
}

final List<MyNavItem> navigationItems = [
  MyNavItem(title: 'Home', icon: Icons.home),
  MyNavItem(title: 'Search', icon: Icons.search),
  MyNavItem(title: 'Profile', icon: Icons.person),
  MyNavItem(title: 'Profile', icon: Icons.person),
];

class _WrapperState extends State<Wrapper> {
  int _selectedIndex = 0;
  final _pageOptions = [HomePage(), Myaccount(), AddsPage(), ChatPage()];
  final iconList = <IconData>[
    Icons.home,
    Icons.chat,
    Icons.book,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 7.0,
        splashColor: Colors.green,
        onPressed: () {},
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.white,
        activeColor: Colors.green,
        activeIndex: _selectedIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        // called when one tab is selected
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        icons: navigationItems.map((item) => item.icon).toList(),
        // items: navigationItems
        //     .map((item) => BottomNavigationBarItem(
        //           icon: Icon(item.icon),
        //           label: item.title,
        //         ))
        //     .toList(),
      ),
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width >= 640)
            NavigationRail(
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              selectedIndex: _selectedIndex,
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(Icons.menu), label: Text('المحادثات')),
                NavigationRailDestination(
                    icon: Icon(Icons.home), label: Text('الرئيسيه')),
                NavigationRailDestination(
                    icon: Icon(Icons.person), label: Text('الإعلانات')),
                NavigationRailDestination(
                    icon: Icon(Icons.person), label: Text('حسابى'))
              ],

              labelType: NavigationRailLabelType.all,
              selectedLabelTextStyle: const TextStyle(
                color: Colors.teal,
              ),

              unselectedLabelTextStyle: const TextStyle(),
              // Called when one tab is selected
              leading: Column(
                children: const [
                  SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.person),
                  ),
                ],
              ),
            ),
          Expanded(child: _pageOptions[_selectedIndex])
        ],
      ),
    );
  }
}
