import 'package:bankly_app/data/data_source/remote_data.dart';
import 'package:bankly_app/data/mapper/mapper.dart';
import 'package:bankly_app/data/network/error_handler.dart';
import 'package:bankly_app/data/network/failure.dart';
import 'package:bankly_app/data/network/network_info.dart';
import 'package:bankly_app/domain/model.dart';
import 'package:bankly_app/domain/repository/repository.dart';
import 'package:bankly_app/presentaion/presentation.dart';
import 'package:bankly_app/presentaion/widgets/ui_helpers.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';




class RepositoryImp implements Repository{
  RemoteDataSource _remoteDataSource;
  NetworkInfo _networkInfo;
  RepositoryImp(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, List<TransactionModel>>> getTransactions() async {

    if(await _networkInfo.isConnected){ //check for network connection before making a network call
      try{
        var response = await _remoteDataSource.getTransactions();
        if(response.isNotEmpty){ //success response
          response.map((response) => response.toDomain() ).toList();
          return Right(response.map((response) => response.toDomain() ).toList()); ///toDomain mapper function is used here to map the response to the transactionModel
        
        }else{
          return Left(Failure(ApiInternalStatus.FAILURE, ResponseMessage.DEFAULT));
        }
      }catch(error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    }else {
      ///connection error, no network connection
      Fluttertoast.showToast(
              msg: StringValue.noInternetError,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
      showSnackbar(StringValue.noInternetError, "connect to internet");
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }


}