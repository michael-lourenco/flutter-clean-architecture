import 'package:dio/dio.dart';

import '../../data/datasources/get_users_datasource.dart';

final $GetUsersDataSourceImpl = Bind.singleton((i) => GetUsersDataSourceImpl());

class GetUsersDataSourceImpl implements GetUsersDataSource {
  GetUsersDataSourceImpl(){
    httpClient.options.baseUrl = 'https://6529f7a555b137ddc83f38ad.mockapi.io';
    httpClient.options.connectTimeout = const Duration(seconds: 5);
    httpClient.options.receiveTimeout = const Duration(seconds: 3);
  }

  final httpClient = Dio();

  @override
  Future<Map<String, dynamic>> call() async {
   var res =   await httpClient.get('/users');
   return res.data;
  }
}
  