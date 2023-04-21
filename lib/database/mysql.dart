import 'package:mysql1/mysql1.dart';

class Mysql{
  static String host = '10.0.2.2';
  static String user = 'root';
  static String password = 'NISHAant@1234';
  static String db = 'cafemeet';
  static int port = 3306;

  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = new ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db,
    );
    return await MySqlConnection.connect(settings);
  }
}

