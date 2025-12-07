import 'package:flutter/material.dart';
import 'package:flutter_batch_10/pages/day_4/listview_builder_page.dart';
import 'package:flutter_batch_10/pages/day_5/main_menu_page.dart';
import 'package:flutter_batch_10/pages/day_5/tabbar_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final pages = [
    MainMenuPage(),
    ListViewBuilderPage(),
    TabbarPage(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'ListView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on),
            label: 'GridView',
          ),
        ],
      ),
    );
  }
}