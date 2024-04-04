double? calculateTotalReturn(double amount, double rate, double minAmount) {
  if (amount < minAmount) {
    return null;
  } else {
    return amount + (amount * rate)/100;
  }
}
