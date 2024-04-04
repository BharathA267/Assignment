String? validateAmount(double amount, double minAmount) {
  if (amount == 0) {
    return 'Please enter an amount';
  }
  if (amount < minAmount) {
    return 'Amount should be greater than $minAmount';
  }
  return null;

}