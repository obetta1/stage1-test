import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

import '../../data/network/failure.dart';
import '../../domain/model.dart';
import '../../domain/usecase/home_usecase.dart';

class HomeViewModel extends HomeViewModelInputs with HomeViewModelOutputs {

  HomeUseCase _homeUseCase;
  final _dataStreamController = BehaviorSubject<List<TransactionModel>>();
  HomeViewModel(this._homeUseCase);

  @override
  Sink get inputHomeData => _dataStreamController.sink;

  @override
  Stream<List<TransactionModel>> get outputHomeData {
    return _dataStreamController.stream.map((event) => event);

  }

  @override
  void start() async {
     (await _homeUseCase.execute(Void))
         .fold((failure){null;}, (transaction){inputHomeData.add(transaction);});
  }
}


abstract class HomeViewModelInputs {
  void start();
  Sink get inputHomeData;
}

abstract class HomeViewModelOutputs {
  Stream<List<TransactionModel>> get outputHomeData;
}
