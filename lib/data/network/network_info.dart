

import 'package:internet_connection_checker/internet_connection_checker.dart';

///this is used to check for network availability on the app
abstract class NetworkInfo{
  Future<bool> get isConnected;
}

class NetworkInfoImp implements NetworkInfo{
  InternetConnectionChecker _connectionChecker;
  NetworkInfoImp(this._connectionChecker);

  @override
  Future<bool> get isConnected => _connectionChecker.hasConnection;
}