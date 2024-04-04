import 'package:assignment/features/post_purchase/payment_confirmation_screen.dart';
import 'package:assignment/features/purchasing/purchase_screen.dart';
import 'package:assignment/models/investment_details_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'features/dashboard/dashboard_screen.dart';
import 'features/post_purchase/deal_success_screen.dart';
import 'features/post_purchase/sign_contract_screen.dart';

enum AppRoute { dashboard, purchase, paymentConfirmation, signContract, finish }

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    routes: <RouteBase>[
      GoRoute(
          path: '/',
          name: AppRoute.dashboard.name,
          builder: (context, state) {
            return const DashboardScreen();
          }),
      GoRoute(
          path: '/purchase',
          name: AppRoute.purchase.name,
          builder: (context, state) {
            return const PurchaseScreen();
          }),
      GoRoute(
          path: '/paymentConfirmation',
          name: AppRoute.paymentConfirmation.name,
          builder: (context, state) {
            return PaymentConfirmationScreen();
          }),
      GoRoute(
          path: '/signContract',
          name: AppRoute.signContract.name,
          builder: (context, state) {
            return SignContractScreen();
          }),
      GoRoute(
          path: '/finish',
          name: AppRoute.finish.name,
          builder: (context, state) {
            return DealSuccessScreen();
          }),
    ],
  );
});
