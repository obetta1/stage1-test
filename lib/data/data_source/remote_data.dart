import 'package:bankly_app/data/network/app_api.dart';

import '../response/response.dart';

abstract class RemoteDataSource{
  Future<TransactionsResponse> getTransactions();
}

class RemoteDataSourceImp implements RemoteDataSource{
  AppServiceClient _appServiceClient;

  RemoteDataSourceImp(this._appServiceClient);
  @override
  Future<TransactionsResponse> getTransactions() async{
    return await _appServiceClient.getTransactions();
  }


}