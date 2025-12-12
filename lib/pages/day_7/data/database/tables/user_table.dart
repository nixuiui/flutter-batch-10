import 'package:drift/drift.dart';

class User extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  TextColumn get email => text().withLength(min: 1, max: 100)();
  TextColumn get gender => text().withLength(min: 1, max: 10)();
  DateTimeColumn get dateOfBirth => dateTime()();
  TextColumn get password => text().withLength(min: 6, max: 100)();
}