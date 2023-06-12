

import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class TransactionsResponse {
  @JsonKey(name: "accountName")
  String? accountName;
  @JsonKey(name: "accountNumber")
  String? accountNumber;
  @JsonKey(name: "bankCode")
  String? bankCode;
  @JsonKey(name: "bankName")
  String? bankName;
  @JsonKey(name: "branchCode")
  String? branchCode;
  @JsonKey(name: "checke")
  String? checke;
  @JsonKey(name: "counterPartyAccountName")
  String? counterPartyAccountName;
  @JsonKey(name: "counterPartyAccountNumber")
  String? counterPartyAccountNumber;
  @JsonKey(name: "ftCounterPartySwitchCode")
  String? ftCounterPartySwitchCode;
  @JsonKey(name: "journalNarration")
  String? journalNarration;
  @JsonKey(name: "logourl")
  String? logourl;
  @JsonKey(name: "maker")
  String? maker;
  @JsonKey(name: "source")
  String? source;
  @JsonKey(name: "trnAmount")
  String? trnAmount;
  @JsonKey(name: "trnContractReference")
  String? trnContractReference;
  @JsonKey(name: "trnCounterPartyBankName")
  String? trnCounterPartyBankName;
  @JsonKey(name: "trnCounterPartyReference")
  String? trnCounterPartyReference;
  @JsonKey(name: "trnCounterPartyService")
  String? trnCounterPartyService;
  @JsonKey(name: "trnCounterpartyBankCode")
  String? trnCounterpartyBankCode;
  @JsonKey(name: "trnDate")
  String? trnDate;
  @JsonKey(name: "trnDrCr")
  String? trnDrCr;
  @JsonKey(name: "trnId")
  String? trnId;
  @JsonKey(name: "trnNarration")
  String? trnNarration;
  @JsonKey(name: "trnPaymentReference")
  String? trnPaymentReference;

  TransactionsResponse({this.accountName, this.accountNumber, this.bankCode,
      this.bankName, this.branchCode, this.checke, this.counterPartyAccountName,
      this.counterPartyAccountNumber, this.ftCounterPartySwitchCode,
      this.journalNarration, this.logourl, this.maker, this.source,
      this.trnAmount, this.trnContractReference, this.trnCounterPartyBankName,
      this.trnCounterPartyReference, this.trnCounterPartyService,
      this.trnCounterpartyBankCode, this.trnDate, this.trnDrCr, this.trnId,
      this.trnNarration, this.trnPaymentReference});

  factory TransactionsResponse.fromJson(Map<String, dynamic> json) => _$TransactionsResponseFromJson(json);




}

