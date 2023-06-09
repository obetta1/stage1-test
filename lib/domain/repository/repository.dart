import 'package:bankly_app/domain/model.dart';
import 'package:dartz/dartz.dart';

import '../../data/network/failure.dart';



abstract class Repository{
  Future<Either<Failure, TransactionModel>> getTransactions();
}