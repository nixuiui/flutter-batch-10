import 'package:flutter/material.dart';

class GridviewCountPage extends StatefulWidget {
  const GridviewCountPage({super.key});

  @override
  State<GridviewCountPage> createState() => _GridviewCountPageState();
}

class _GridviewCountPageState extends State<GridviewCountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gridview Page')),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 4/5,
        children: [
          Container(color: Colors.red, child: Icon(Icons.ac_unit, color: Colors.white, size: 100)),
          Container(color: Colors.blue, child: Icon(Icons.access_alarm, color: Colors.white, size: 100)),
          Container(color: Colors.green, child: Icon(Icons.accessibility, color: Colors.white, size: 100)),
          Container(color: Colors.yellow, child: Icon(Icons.account_balance, color: Colors.white, size: 100)),
          Container(color: Colors.orange, child: Icon(Icons.adb, color: Colors.white, size: 100)),
          Container(color: Colors.purple, child: Icon(Icons.airport_shuttle, color: Colors.white, size: 100)),
          Container(color: Colors.brown, child: Icon(Icons.baby_changing_station, color: Colors.white, size: 100)),
          Container(color: Colors.cyan, child: Icon(Icons.cake, color: Colors.white, size: 100)),
          Container(color: Colors.pink, child: Icon(Icons.call, color: Colors.white, size: 100)),
          Container(color: Colors.lime, child: Icon(Icons.camera, color: Colors.white, size: 100)),
        ],
      ),
    );
  }
}