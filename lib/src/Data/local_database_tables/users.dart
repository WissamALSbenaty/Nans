
import 'package:moor_flutter/moor_flutter.dart';


class Users extends Table{
  TextColumn get firstName => text()();
  TextColumn get lastName => text()();
  TextColumn get phoneNumber => text()();
  TextColumn get password => text()();
  TextColumn get token => text()();
  BoolColumn get isLoggedInBefore => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {token};


}