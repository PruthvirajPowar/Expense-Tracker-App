import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key, required this.selectedIndex, required this.onDestinationSelected});

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 60,
      selectedIndex : selectedIndex,
      onDestinationSelected: onDestinationSelected,
      indicatorColor: Colors.blue.shade500,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home, color: Colors.white,),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.home, color: Colors.white,),
          icon: Badge(child: Icon(Icons.notifications_sharp)),
          label: 'Transaction',
        ),
      ],
    );
  }
}
