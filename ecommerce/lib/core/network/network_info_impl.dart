import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:layout/core/network/network_info.dart';

class NetworkInfoImpl implements NetworkInfo{
  
  final InternetConnectionChecker connection;
  
  NetworkInfoImpl(this.connection);

  @override
  Future<bool> get isConnected => connection.hasConnection;
}