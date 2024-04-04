enum MatricesEnum {
  funding(value: "FUNDING"),
  traction(value: "TRACTION"),
  financials(value: "FINANCIALS"),
  competition(value: "COMPETITION"),;

  const MatricesEnum({required this.value});

  final String value;

  static List<MatricesEnum> matricesOptions() {
    return [
      MatricesEnum.funding,
      MatricesEnum.traction,
      MatricesEnum.financials,
      MatricesEnum.competition,
    ];
  }
}