import 'dart:math';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './car/cart.dart';
import './category/Category.dart';
import './home/home.dart';
import './profile/profile.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  TabController tabController;

  //页面列表
  List _pages = [Home(), Category(), Car(), Profile()];
//  List _colors = [Colors.grey,Colors.grey,Colors.grey,Colors.grey];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: _pages.length, vsync: this)
      ..addListener(() {
        setState(() {
//          _colors.forEach((element) {
//            element = Colors.grey;
//          });
          currentIndex = tabController.index;
//          _colors[currentIndex] = Colors.lightBlueAccent;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 46,
          backgroundColor: Colors.lightBlueAccent,
          index: currentIndex,
          color: Colors.white,
          items: <Widget>[
            Icon(
              Icons.home,
              size: 24,
              color: currentIndex==0?Colors.lightBlueAccent:Colors.grey,
            ),
            Icon(
              Icons.category,
              size: 24,
              color: currentIndex==1?Colors.lightBlueAccent:Colors.grey,
            ),
            Icon(
              Icons.shopping_cart,
              size: 24,
              color: currentIndex==2?Colors.lightBlueAccent:Colors.grey,
            ),
            Icon(
              Icons.person_outline,
              size: 24,
              color: currentIndex==3?Colors.lightBlueAccent:Colors.grey,
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
            tabController.animateTo(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          Container(child: _pages[0]),
          Container(child: _pages[1]),
          Container(child: _pages[2]),
          Container(child: _pages[3]),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
