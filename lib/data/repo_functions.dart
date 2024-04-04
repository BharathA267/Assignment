import 'package:assignment/data/mappers.dart';
import 'package:assignment/models/financials_response.dart';
import 'package:assignment/models/investment_details_response.dart';
import 'package:assignment/network/network_models/network_financials_response.dart';
import 'package:assignment/network/network_models/network_investment_details_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../network/mock_network_functions.dart';

class Repository {
  Repository(this.mockApis);

  final MockApis mockApis;

  Future<FinancialsResponse> getFinancials() async {
    NetworkFinancialsResponse response = await mockApis.getMockFinancials();
    return response.asModel();
  }

  Future<InvestmentDetailsResponse> getInvestmentDetails() async {
    NetworkInvestmentDetailsResponse response =
        await mockApis.getMockInvestmentDetails();
    return response.asModel();
  }
}

final repoProvider = Provider((ref) {
  final apis = ref.read(mockApiProvider);
  return Repository(apis);
});
