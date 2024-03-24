import 'package:flutter/material.dart';
import 'package:flutter_foodybite/screens/add.dart';
import 'package:flutter_foodybite/screens/home.dart';
import 'package:flutter_foodybite/screens/label.dart';
import 'package:flutter_foodybite/screens/profile.dart';
import 'package:flutter_foodybite/screens/notifications.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController;
  int _page = 0;

  List icons = [
    Icons.home,
    Icons.label,
    Icons.add,
    Icons.notifications,
    Icons.person,
  ];

  List pages = [
    Home(),
    Label(key: ValueKey('label')), // Pass null as the key
    Add(key: ValueKey<String>('add')),
    Notifications(key: ValueKey<String>('notifications')),
    Profile(key: ValueKey<String>('profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: List.generate(5, (index) => pages[index]),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildTabIcon(0),
            buildTabIcon(1),
            SizedBox(width: 30), // Adjust the spacing as needed
            buildTabIcon(3),
            buildTabIcon(4),
          ],
        ),
        color: Theme.of(context).primaryColor,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(
          Icons.add,
        ),
        onPressed: () => _pageController.jumpToPage(2),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  Widget buildTabIcon(int index) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        index == 3 ? 30 : 0, // Add spacing for the fourth icon
        0,
        index == 1 ? 30 : 0, // Add spacing for the second icon
        0,
      ),
      child: IconButton(
        icon: Icon(
          icons[index],
          size: 24.0,
        ),
        color: _page == index
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).textTheme.bodySmall!.color,
        onPressed: () => _pageController.jumpToPage(index),
      ),
    );
  }
}
