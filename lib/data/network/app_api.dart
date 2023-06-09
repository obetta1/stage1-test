
import 'package:bankly_app/data/response/response.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/http.dart';
import '../../config/api_constant.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constant.APP_API)
abstract class AppServiceClient{
factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;
@GET('/transactions')
Future<List<TransactionsResponse>> getTransactions();

}