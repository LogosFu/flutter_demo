import 'package:flutter/material.dart';
import 'package:flutterdemo/page/add/img_page.dart';
import 'package:flutterdemo/page/home/home_page.dart';
import 'package:flutterdemo/page/user/user_info_page.dart';
import 'package:flutterdemo/wiget/reload_handler.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> implements ReloadHandler {
  final _iconColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list..add(HomePage())..add(BellePage())..add(UserInfo());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logos App"),
      ),
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _iconColor,
              ),
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_a_photo,
                color: _iconColor,
              ),
              title: Text("Add")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle,
                color: _iconColor,
              ),
              title: Text("User")),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  @override
  void onReload() {
    // TODO: implement onReload
  }
}
