import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listview Page')),
      body: ListView(
        reverse: true,
        children: [
          Container(
            color: Colors.red,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          Container(
            color: Colors.yellow,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                color: Colors.blue,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Text("data")
              ),
              Container(
                color: Colors.purple,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Text("data")
              ),
              Container(
                color: Colors.grey,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Text("data")
              ),
            ],
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          Container(
            color: Colors.yellow,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          SizedBox(
            height: 100,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              physics: ClampingScrollPhysics(),
              children: [
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 200,
                  padding: EdgeInsets.all(16),
                  child: Text("data")
                ),
                Container(
                  color: Colors.purple,
                  height: 100,
                  width: 200,
                  padding: EdgeInsets.all(16),
                  child: Text("data")
                ),
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: 200,
                  padding: EdgeInsets.all(16),
                  child: Text("data")
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          Container(
            color: Colors.yellow,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          Container(
            color: Colors.yellow,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          Container(
            color: Colors.yellow,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text("data")
          ),
        ],
      ),
    );
  }
}