
import 'package:bankly_app/domain/model.dart';
import 'package:bankly_app/presentaion/home/home_viewmodel.dart';
import 'package:get/get.dart';


import '../app/di.dart';

class TrController extends GetxController {


  final HomeViewModel viewInstance = instance<HomeViewModel>();

  var allTransaction = <TransactionModel>[].obs;
  var debitTransaction = <TransactionModel>[].obs;
  var creditTransaction = <TransactionModel>[].obs;

  var filteredTransaction = <TransactionModel>[].obs;
  var index = 1.obs;
  var isLoading = false.obs;
  var isNotFound = false.obs;

  @override
  void onInit() {
    viewInstance.start();
    allTransaction.bindStream(viewInstance.outputHomeData);
    filterTransactions('deposit');
    //pendingOders.bindStream(database.getPendingOrders());
    print('onInit value>>>>>>>${allTransaction}');
    if(allTransaction.isEmpty){
      isLoading.value = true;
    }else{
      filterTransactions('deposit');
    }
    super.onInit();
  }

  void debitTx(){
    debitTransaction.value = allTransaction
        .where((transaction) =>
        transaction.trnDrCr.toLowerCase().contains('withdrawal') ||
            transaction.trnDrCr.toLowerCase().contains('payment')).toList();

    creditTransaction.value = allTransaction
        .where((transaction) => transaction.trnDrCr.toLowerCase().contains('invoice') ||
        transaction.trnDrCr.toLowerCase().contains('deposit') ).toList();
  }

  void filterTransactions(String keyword) {
      filteredTransaction.value = allTransaction.value
          .where((transaction) =>
      transaction.accountName.toLowerCase().contains(keyword.toLowerCase()) ||
          transaction.trnAmount.toLowerCase().contains(keyword.toLowerCase()) ||
          transaction.bankName.toString().contains(keyword) ||
          transaction.trnDrCr.toLowerCase().contains(keyword.toLowerCase())||
          transaction.trnCounterPartyBankName.toLowerCase().contains(keyword.toLowerCase())||
          transaction.trnNarration.toLowerCase().contains(keyword.toLowerCase())||
          transaction.accountNumber.toLowerCase().contains(keyword.toLowerCase())||
          transaction.counterPartyAccountNumber.toLowerCase().contains(keyword.toLowerCase())||
          transaction.counterPartyAccountName.toLowerCase().contains(keyword.toLowerCase()))
          .toList();

  }


}