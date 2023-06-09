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
      json['accountName'] as String?,
      json['accountNumber'] as String?,
      json['bankCode'] as String?,
      json['bankName'] as String?,
      json['branchCode'] as String?,
      json['checke'] as String?,
      json['counterPartyAccountName'] as String?,
      json['counterPartyAccountNumber'] as String?,
      json['ftCounterPartySwitchCode'] as String?,
      json['journalNarration'] as String?,
      json['logourl'] as String?,
      json['maker'] as String?,
      json['source'] as String?,
      json['trnAmount'] as String?,
      json['trnContractReference'] as String?,
      json['trnCounterPartyBankName'] as String?,
      json['trnCounterPartyReference'] as String?,
      json['trnCounterPartyService'] as String?,
      json['trnCounterpartyBankCode'] as String?,
      json['trnDate'] as String?,
      json['trnDrCr'] as String?,
      json['trnId'] as String?,
      json['trnNarration'] as String?,
      json['trnPaymentReference'] as String?,
    )
      ..status = json['status'] as int?
      ..message = json['message'] as String?;

Map<String, dynamic> _$TransactionsResponseToJson(
        TransactionsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
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
