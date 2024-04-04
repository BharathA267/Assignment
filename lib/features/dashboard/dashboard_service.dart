import 'package:assignment/models/financials_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repo_functions.dart';
import '../../models/investment_details_response.dart';

final dashboardProvider = FutureProvider<DashboardScreenData>((ref) async {
  final financialsResponse = await ref.watch(repoProvider).getFinancials();
  final investmentDetailsResponse =
      await ref.watch(repoProvider).getInvestmentDetails();
  return DashboardScreenData(
    financialsResponse: financialsResponse,
    investmentDetailsResponse: investmentDetailsResponse,
  );
});

class DashboardScreenData {
  final FinancialsResponse financialsResponse;
  final InvestmentDetailsResponse investmentDetailsResponse;

  DashboardScreenData({
    required this.financialsResponse,
    required this.investmentDetailsResponse,
  });
}
