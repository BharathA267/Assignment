import 'package:json_annotation/json_annotation.dart';

part 'network_investment_details_response.g.dart';

@JsonSerializable()
class NetworkInvestmentDetailsResponse {
  final String investedIn;
  final String investorName;
  final double minimumInvestmentAmount;
  final int tenure;
  final double netYield;
  final double raisedAmountPercentage;

  const NetworkInvestmentDetailsResponse({
    this.investedIn = '',
    this.investorName = '',
    this.minimumInvestmentAmount = 0.0,
    this.tenure = 0,
    this.netYield = 0.0,
    this.raisedAmountPercentage = 0.0,
  });

  factory NetworkInvestmentDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$NetworkInvestmentDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$NetworkInvestmentDetailsResponseToJson(this);
}
