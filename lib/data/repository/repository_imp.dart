import 'package:bankly_app/data/data_source/remote_data.dart';
import 'package:bankly_app/data/mapper/mapper.dart';
import 'package:bankly_app/data/network/error_handler.dart';
import 'package:bankly_app/data/network/failure.dart';
import 'package:bankly_app/data/network/network_info.dart';
import 'package:bankly_app/domain/model.dart';
import 'package:bankly_app/domain/repository/repository.dart';
import 'package:dartz/dartz.dart';

class RepositoryImp implements Repository{
  RemoteDataSource _remoteDataSource;
  NetworkInfo _networkInfo;

  RepositoryImp(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, List<TransactionModel>>> getTransactions() async {

    if(await _networkInfo.isConnected){ //check for network connection before making a network call
      try{
        final response = await _remoteDataSource.getTransactions();

        if(response.isNotEmpty){ //success response
          return Right(response.map((response) => response.toDomain() ).toList()); ///toDomain mapper function is used here to map the response to the transactionModel
        }else{
          return Left(Failure(ApiInternalStatus.FAILURE, ResponseMessage.DEFAULT));
        }
      }catch(error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    }else {
      ///connection error, no network connection
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }


}