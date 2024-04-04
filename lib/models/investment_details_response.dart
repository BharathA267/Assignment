import 'package:freezed_annotation/freezed_annotation.dart';

part 'investment_details_response.freezed.dart';

@freezed
class InvestmentDetailsResponse with _$InvestmentDetailsResponse {
  const factory InvestmentDetailsResponse({
    required String investedIn,
    required String investorName,
    required double minimumInvestmentAmount,
    required int tenure,
    required double netYield,
    required double raisedAmountPercentage,
  }) = _InvestmentDetailsResponse;
}
