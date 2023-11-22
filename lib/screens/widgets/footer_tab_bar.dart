import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tangotok/features/feeds/views/feeds_screen.dart';
import 'package:tangotok/features/users/views/user_profile_screen.dart';

class FooterTabBar extends StatefulWidget {
  const FooterTabBar({super.key});

  @override
  State<FooterTabBar> createState() => _FooterTabBarState();
}

class _FooterTabBarState extends State<FooterTabBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index, BuildContext context) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      context.go(FeedsScreen.routeName);
    }
    if (index == 1) {
      // context.go(Search.routeName);
    }
    if (index == 2) {
      // showModalBottomSheet(
      //   context: context,
      //   builder: (context) => Post(),
      // );
    }
    if (index == 3) {
      // context.go(Activity.routeName);
    }
    if (index == 4) {
      context.go(ProfileScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          label: 'search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.note_add,
            color: Colors.grey,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.solidHeart,
            color: Colors.grey,
          ),
          label: 'Like',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.amber[800],
      currentIndex: _selectedIndex,
      onTap: (newIndex) => {
        _onItemTapped(newIndex, context),
      },
    );
  }
}
