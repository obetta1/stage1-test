
import 'package:bankly_app/data/network/failure.dart';
import 'package:bankly_app/domain/model.dart';
import 'package:bankly_app/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

import '../repository/repository.dart';

class HomeUseCase extends BaseUseCase<void ,List<TransactionModel>>{
  Repository _repository;

  HomeUseCase(this._repository);

  @override
  Future<Either<Failure, List<TransactionModel>>> execute(input) async{
   var res = await _repository.getTransactions();
   return res;
  }
}