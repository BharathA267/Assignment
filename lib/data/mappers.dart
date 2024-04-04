import 'package:assignment/network/network_models/network_financials_response.dart';

import '../models/financials_response.dart';
import '../models/investment_details_response.dart';
import '../network/network_models/network_investment_details_response.dart';

extension FinancialsMapper on NetworkFinancialsResponse {
  FinancialsResponse asModel() {
    return FinancialsResponse(
      totalDeals: totalDeals,
      activeDeals: activeDeals,
      maturedDeals: maturedDeals,
      onTimePayment: onTimePayment,
      raisedAmount: raisedAmount,
    );
  }
}

extension InvestmentDetailsMapper on NetworkInvestmentDetailsResponse {
  InvestmentDetailsResponse asModel() {
    return InvestmentDetailsResponse(
      investedIn: investedIn,
      investorName: investorName,
      minimumInvestmentAmount: minimumInvestmentAmount,
      tenure: tenure,
      netYield: netYield,
      raisedAmountPercentage: raisedAmountPercentage,
    );
  }
}
