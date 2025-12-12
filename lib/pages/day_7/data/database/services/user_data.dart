import 'package:flutter_batch_10/pages/day_7/data/database/app_database.dart';

class UserDataService {
  final AppDatabase db;

  UserDataService(this.db);

  Future<List<UserData>> getAllUsers() async {
    return await db.select(db.user).get();
  }

  Future<UserData?> getUserById(int id) async {
    return await (db.select(db.user)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertUser(UserCompanion user) async {
    return await db.into(db.user).insert(user);
  }

  Future<bool> updateUser(UserData user) async {
    return await db.update(db.user).replace(user);
  }

  Future<int> deleteUser(int id) async {
    return await (db.delete(db.user)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<UserData?> login(String email, String password) async {
    print('Attempting login for $email');
    final query = (db.select(db.user)
          ..where((tbl) => tbl.email.equals(email))
          ..where((tbl) => tbl.password.equals(password))
          ..limit(1));
    final users = await query.get();
    return users.isNotEmpty ? users.first : null;
  }
}