// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_investment_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkInvestmentDetailsResponse _$NetworkInvestmentDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    NetworkInvestmentDetailsResponse(
      investedIn: json['investedIn'] as String? ?? '',
      investorName: json['investorName'] as String? ?? '',
      minimumInvestmentAmount:
          (json['minimumInvestmentAmount'] as num?)?.toDouble() ?? 0.0,
      tenure: json['tenure'] as int? ?? 0,
      netYield: (json['netYield'] as num?)?.toDouble() ?? 0.0,
      raisedAmountPercentage:
          (json['raisedAmountPercentage'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$NetworkInvestmentDetailsResponseToJson(
        NetworkInvestmentDetailsResponse instance) =>
    <String, dynamic>{
      'investedIn': instance.investedIn,
      'investorName': instance.investorName,
      'minimumInvestmentAmount': instance.minimumInvestmentAmount,
      'tenure': instance.tenure,
      'netYield': instance.netYield,
      'raisedAmountPercentage': instance.raisedAmountPercentage,
    };
