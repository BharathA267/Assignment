import 'package:json_annotation/json_annotation.dart';

part 'network_financials_response.g.dart';

@JsonSerializable()
class NetworkFinancialsResponse {
  final int totalDeals;
  final int activeDeals;
  final int maturedDeals;
  final double onTimePayment;
  final double raisedAmount;

  const NetworkFinancialsResponse({
    this.totalDeals = 0,
    this.activeDeals = 0,
    this.maturedDeals = 0,
    this.onTimePayment = 0.0,
    this.raisedAmount = 0.0,
  });

  factory NetworkFinancialsResponse.fromJson(Map<String, dynamic> json) =>
      _$NetworkFinancialsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkFinancialsResponseToJson(this);
}
