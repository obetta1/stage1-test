// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse()
  ..status = json['status'] as int?
  ..message = json['message'] as String?;

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

TransactionsResponse _$TransactionsResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionsResponse(
      accountName: json['accountName'] as String?,
      accountNumber: json['accountNumber'] as String?,
      bankCode: json['bankCode'] as String?,
      bankName: json['bankName'] as String?,
      branchCode: json['branchCode'] as String?,
      checke: json['checke'] as String?,
      counterPartyAccountName: json['counterPartyAccountName'] as String?,
      counterPartyAccountNumber: json['counterPartyAccountNumber'] as String?,
      ftCounterPartySwitchCode: json['ftCounterPartySwitchCode'] as String?,
      journalNarration: json['journalNarration'] as String?,
      logourl: json['logourl'] as String?,
      maker: json['maker'] as String?,
      source: json['source'] as String?,
      trnAmount: json['trnAmount'] as String?,
      trnContractReference: json['trnContractReference'] as String?,
      trnCounterPartyBankName: json['trnCounterPartyBankName'] as String?,
      trnCounterPartyReference: json['trnCounterPartyReference'] as String?,
      trnCounterPartyService: json['trnCounterPartyService'] as String?,
      trnCounterpartyBankCode: json['trnCounterpartyBankCode'] as String?,
      trnDate: json['trnDate'] as String?,
      trnDrCr: json['trnDrCr'] as String?,
      trnId: json['trnId'] as String?,
      trnNarration: json['trnNarration'] as String?,
      trnPaymentReference: json['trnPaymentReference'] as String?,
    );

Map<String, dynamic> _$TransactionsResponseToJson(
        TransactionsResponse instance) =>
    <String, dynamic>{
      'accountName': instance.accountName,
      'accountNumber': instance.accountNumber,
      'bankCode': instance.bankCode,
      'bankName': instance.bankName,
      'branchCode': instance.branchCode,
      'checke': instance.checke,
      'counterPartyAccountName': instance.counterPartyAccountName,
      'counterPartyAccountNumber': instance.counterPartyAccountNumber,
      'ftCounterPartySwitchCode': instance.ftCounterPartySwitchCode,
      'journalNarration': instance.journalNarration,
      'logourl': instance.logourl,
      'maker': instance.maker,
      'source': instance.source,
      'trnAmount': instance.trnAmount,
      'trnContractReference': instance.trnContractReference,
      'trnCounterPartyBankName': instance.trnCounterPartyBankName,
      'trnCounterPartyReference': instance.trnCounterPartyReference,
      'trnCounterPartyService': instance.trnCounterPartyService,
      'trnCounterpartyBankCode': instance.trnCounterpartyBankCode,
      'trnDate': instance.trnDate,
      'trnDrCr': instance.trnDrCr,
      'trnId': instance.trnId,
      'trnNarration': instance.trnNarration,
      'trnPaymentReference': instance.trnPaymentReference,
    };
