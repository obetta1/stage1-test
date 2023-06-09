import 'package:bankly_app/app/extension/extension.dart';
import 'package:bankly_app/domain/model.dart';

import '../../data/response/response.dart';

///this convert the response to non nullable object(model)

const EMPTY = '';

extension TransactionResponseMapper on TransactionsResponse? {
  TransactionModel toDomain() {
    return TransactionModel(
      this?.accountName?.orEmpty() ?? EMPTY,
      this?.accountNumber?.orEmpty() ?? EMPTY,
      this?.bankCode?.orEmpty() ?? EMPTY,
      this?.bankName?.orEmpty() ?? EMPTY,
      this?.branchCode?.orEmpty() ?? EMPTY,
      this?.checke?.orEmpty() ?? EMPTY,
      this?.counterPartyAccountName?.orEmpty() ?? EMPTY,
      this?.counterPartyAccountNumber?.orEmpty() ?? EMPTY,
      this?.ftCounterPartySwitchCode?.orEmpty() ?? EMPTY,
      this?.journalNarration?.orEmpty() ?? EMPTY,
      this?.logourl?.orEmpty() ?? EMPTY,
      this?.maker?.orEmpty() ?? EMPTY,
      this?.source?.orEmpty() ?? EMPTY,
      this?.trnAmount?.orEmpty() ?? EMPTY,
      this?.trnContractReference?.orEmpty() ?? EMPTY,
      this?.trnCounterPartyBankName?.orEmpty() ?? EMPTY,
      this?.trnCounterPartyReference?.orEmpty() ?? EMPTY,
      this?.trnCounterPartyService?.orEmpty() ?? EMPTY,
      this?.trnCounterpartyBankCode?.orEmpty() ?? EMPTY,
      this?.trnDate?.orEmpty() ?? EMPTY,
      this?.trnDrCr?.orEmpty() ?? EMPTY,
      this?.trnId?.orEmpty() ?? EMPTY,
      this?.trnNarration?.orEmpty() ?? EMPTY,
      this?.trnPaymentReference?.orEmpty() ?? EMPTY,
    );
  }
}
