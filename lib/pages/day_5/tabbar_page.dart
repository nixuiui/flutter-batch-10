import 'package:flutter/material.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({super.key});

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {

  final tabs = [
    const Tab(text: 'Home'),
    const Tab(text: 'Profile'),
    const Tab(text: 'Settings'),
  ];

  final contents = [
    const Center(child: Text('Home Content')),
    const Center(child: Text('Profile Content')),
    const Center(child: Text('Settings Content')),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabbar Page'),
          bottom: TabBar(
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          children: contents,
        ),
      ),
    );
  }
}