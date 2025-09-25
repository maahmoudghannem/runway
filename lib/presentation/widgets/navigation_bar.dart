import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class NavigationBarBody extends StatefulWidget {
  @override
  _NavigationBarBodyState createState() => _NavigationBarBodyState();
}

class _NavigationBarBodyState extends State<NavigationBarBody> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _navItems = [
    {"icon": Icons.home_outlined, "activeIcon": Icons.home, "label": "Home"},
    {
      "icon": Icons.favorite_border,
      "activeIcon": Icons.favorite,
      "label": "Likes",
    },
    {
      "icon": Icons.shopping_bag_outlined,
      "activeIcon": Icons.shopping_bag,
      "label": "Bag",
      "badge": 5,
    },
    {
      "icon": Icons.person_outline,
      "activeIcon": Icons.person,
      "label": "Profile",
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: _selectedIndex,
      iconSize: 27,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      items: _navItems.map((item) {
        Widget icon = Icon(item["icon"]);

        Widget activeIcon = Icon(item["activeIcon"]);

        if (item.containsKey("badge")) {
          icon = badges.Badge(
            position: badges.BadgePosition.topEnd(top: -10, end: -12),
            badgeStyle: badges.BadgeStyle(badgeColor: Colors.red),
            badgeContent: Text(
              item["badge"].toString(),
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: icon,
          );
          activeIcon = badges.Badge(
            position: badges.BadgePosition.topEnd(top: -10, end: -12),
            badgeStyle: badges.BadgeStyle(badgeColor: Colors.red),
            badgeContent: Text(
              item["badge"].toString(),
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: activeIcon,
          );
        }
        return BottomNavigationBarItem(
          icon: icon,
          activeIcon: activeIcon,
          label: item["label"],
        );
      }).toList(),
    );
  }
}
