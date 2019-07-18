import 'package:flutter/material.dart';
import '../style/text_style.dart';

class CutomeBottomAppBar extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomBarItems = [];

  CutomeBottomAppBar() {
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.black,
        ),
        title: Text(
          'Explore',
          style: bottomNavBarStyle,
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite,
          color: Colors.black,
        ),
        title: Text(
          'Watchlist',
          style: bottomNavBarStyle,
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.local_offer,
          color: Colors.black,
        ),
        title: Text(
          'Deals',
          style: bottomNavBarStyle,
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        title: Text(
          'Notifications',
          style: bottomNavBarStyle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15.0,
      child: BottomNavigationBar(
        items: bottomBarItems,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
