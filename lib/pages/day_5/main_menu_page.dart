import 'package:flutter/material.dart';
import 'package:flutter_batch_10/pages/day_3/footbool_player_page.dart';
import 'package:flutter_batch_10/utils/routes.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({super.key});

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Football Player Card'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => FootballPlayerPage()
              ));
            },
          ),
          ListTile(
            title: const Text('GridView Page'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.gridviewPage);
            },
          ),
          ListTile(
            title: const Text('GridViewCount Page'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.gridViewCount);
            },
          ),
        ],
      ),
    );
  }
}