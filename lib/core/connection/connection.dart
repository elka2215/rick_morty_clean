// import 'package:injectable/injectable.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';

// abstract class Connection {
//   Future<bool> get isConnected;
// }

// @Singleton(as: Connection)
// class ConnectionImpl implements Connection {
//   final InternetConnectionChecker internetConnectionChecker;

//   ConnectionImpl({required this.internetConnectionChecker});
//   @override
//   Future<bool> get isConnected => internetConnectionChecker.hasConnection;
// }
