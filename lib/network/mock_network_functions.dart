import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'network_models/network_financials_response.dart';
import 'network_models/network_investment_details_response.dart';

class MockApis {
  MockApis();

  Future<NetworkFinancialsResponse> getMockFinancials() async {
    return NetworkFinancialsResponse.fromJson(jsonDecode(
      '''
      {
        "totalDeals": 18,
        "activeDeals": 6,
        "maturedDeals": 12,
        "onTimePayment": 100,
        "raisedAmount": 69400000
      }
      ''',
    ));
  }

  Future<NetworkInvestmentDetailsResponse> getMockInvestmentDetails() async {
    return NetworkInvestmentDetailsResponse.fromJson(jsonDecode(
      '''
      {
        "investorName": "Agrizy ",
        "investedIn": " Keshav Industries",
        "minimumInvestmentAmount": 100000,
        "tenure": 61,
        "netYield": 13.1,
        "raisedAmountPercentage": 70
      }
      ''',
    ));
  }
}

final mockApiProvider = Provider((ref) {
  return MockApis();
});
