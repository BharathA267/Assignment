// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_financials_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkFinancialsResponse _$NetworkFinancialsResponseFromJson(
        Map<String, dynamic> json) =>
    NetworkFinancialsResponse(
      totalDeals: json['totalDeals'] as int? ?? 0,
      activeDeals: json['activeDeals'] as int? ?? 0,
      maturedDeals: json['maturedDeals'] as int? ?? 0,
      onTimePayment: (json['onTimePayment'] as num?)?.toDouble() ?? 0.0,
      raisedAmount: (json['raisedAmount'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$NetworkFinancialsResponseToJson(
        NetworkFinancialsResponse instance) =>
    <String, dynamic>{
      'totalDeals': instance.totalDeals,
      'activeDeals': instance.activeDeals,
      'maturedDeals': instance.maturedDeals,
      'onTimePayment': instance.onTimePayment,
      'raisedAmount': instance.raisedAmount,
    };
