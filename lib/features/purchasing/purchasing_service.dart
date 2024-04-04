import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repo_functions.dart';
import '../../models/investment_details_response.dart';

final purchasingProvider =
    FutureProvider<InvestmentDetailsResponse>((ref) async {
  final investmentDetails =
      await ref.watch(repoProvider).getInvestmentDetails();
  return investmentDetails;
});
