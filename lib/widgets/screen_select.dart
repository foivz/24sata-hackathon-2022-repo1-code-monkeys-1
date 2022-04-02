import 'package:flutter/material.dart';

class mainScreenBottomNav extends StatefulWidget {
  const mainScreenBottomNav({ Key? key }) : super(key: key);

  @override
  State<mainScreenBottomNav> createState() => _mainScreenBottomNavState();
}

class _mainScreenBottomNavState extends State<mainScreenBottomNav> {
  int _currTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _tabPages = <Widget>[
      const Align(
        alignment: Alignment.center,
        child: Text("Prvi Screen!")),
      const Align(
        alignment: Alignment.center,
        child: Text("Drugi Screen"),),
      const Align(
        alignment: Alignment.center,
        child: Text("Treci screen!"),),
    ];
    final _bottomNavBarItems = <BottomNavigationBarItem> [
      const BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
      const BottomNavigationBarItem(icon: Icon(Icons.add_circle_rounded), label: ""),
      const BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: ""),
    ];
    assert(_tabPages.length == _bottomNavBarItems.length);
    final botNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _currTabIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey[200],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey.shade600,
      onTap: (int index) {                 
        setState(() {
          _currTabIndex = index;
        });
      },
    );

    return Scaffold(
      body: _tabPages[_currTabIndex],
      bottomNavigationBar: botNavBar,
    );



  }
}
