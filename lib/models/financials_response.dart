import 'package:freezed_annotation/freezed_annotation.dart';

part 'financials_response.freezed.dart';

@freezed
class FinancialsResponse with _$FinancialsResponse {
  const factory FinancialsResponse({
    required int totalDeals,
    required int activeDeals,
    required int maturedDeals,
    required double onTimePayment,
    required double raisedAmount,
  }) = _FinancialsResponse;
}