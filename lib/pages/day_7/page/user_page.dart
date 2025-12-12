import 'package:flutter/material.dart';
import 'package:flutter_batch_10/pages/day_7/data/database/app_database.dart';
import 'package:flutter_batch_10/pages/day_7/data/database/services/user_data.dart';
import 'package:flutter_batch_10/utils/routes.dart';
import 'package:flutter_batch_10/utils/singleton.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  final userData = getIt<UserDataService>();

  final List<UserData> _users = [];

  void _fetchUsers() async {
    final users = await userData.getAllUsers();
    setState(() {
      _users.clear();
      _users.addAll(users);
    });
  }

  @override
  void initState() {
    _fetchUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
        actions: [
          IconButton.outlined(
            icon: const Icon(Icons.add),
            onPressed: () async {
              final result = await Navigator.pushNamed(context, AppRoutes.userForm);
              if (result != null && result == true) {
                _fetchUsers();
              }
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: (context, index) {
          final user = _users[index];
          return ListTile(
            title: Text(user.name),
            subtitle: Text(user.email),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () async{
                    final result = await Navigator.pushNamed(
                      context, 
                      AppRoutes.userForm,
                      arguments: user,
                    );
                    if (result != null && result == true) {
                      _fetchUsers();
                    }
                  }, 
                  icon: Icon(Icons.edit)
                ),
                IconButton(
                  onPressed: () async{
                    await userData.deleteUser(user.id);
                    _fetchUsers();
                  }, 
                  icon: Icon(Icons.delete)
                ),
              ],
            ),
          );
        },
      )
    );
  }
}