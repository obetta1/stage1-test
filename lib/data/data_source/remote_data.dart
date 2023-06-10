import 'package:bankly_app/data/network/app_api.dart';

import '../response/response.dart';

abstract class RemoteDataSource{
  Future<List<TransactionsResponse>> getTransactions();
}

class RemoteDataSourceImp implements RemoteDataSource{
  AppServiceClient _appServiceClient;

  RemoteDataSourceImp(this._appServiceClient);
  @override
  Future<List<TransactionsResponse>> getTransactions() async{
    var res = await _appServiceClient.getTransactions();
    return res;
  }


}