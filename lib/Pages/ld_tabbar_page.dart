import 'package:flutter/material.dart';
import './ld_home_page.dart';
import './ld_games_page.dart';
import './ld_club_page.dart';
import './ld_mine_page.dart';

class LDTabbarPage extends StatefulWidget {
  LDTabbarPage({Key key}) : super(key: key);
  _LDTabbarPageState createState() => _LDTabbarPageState();
}
class _LDTabbarPageState extends State<LDTabbarPage> {
  int _selectedIndex = 0;
  final List<Widget> childListPage = [HomePage(),GamePage(),ClubPage(),MinePage()];
  final listNavTitles = ['首页','游戏圈','俱乐部','我的'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(listNavTitles[_selectedIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.games), title: Text('Business')),
          BottomNavigationBarItem(icon: Icon(Icons.local_activity), title: Text('club')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Me')),
        ],
         currentIndex: _selectedIndex,
        fixedColor: Theme.of(context).accentColor,
        onTap: _onItemTapped,
      ),
      body: childListPage[_selectedIndex],
    );
  }

  void _onItemTapped(int index){
    setState(() {
    _selectedIndex = index;
    });
  }
}

