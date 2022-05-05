import 'package:mysql1/mysql1.dart';

class DataBase {
  Future<MySqlConnection> openConnection() async {
    //valores de conexão com o bd
    final settings = ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: '1234',
      db: 'dart_mysql',
    );

    return await MySqlConnection.connect(settings);
  }
}
