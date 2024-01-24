class Validation {
  static String? adminPriceValidation(String? value) =>
      value!.trim().isEmpty ? 'Please enter valid adminPrice' : null;

  static String? wholeSalePriceValidation(String? value) =>
      value!.trim().isEmpty ? 'Please enter valid wholeSalePrice' : null;

  static String? branchPriceValidation(String? value) =>
      value!.trim().isEmpty ? 'Please enter valid branchPrice' : null;

  static String? userPriceValidation(String? value) =>
      value!.trim().isEmpty ? 'Please enter valid userPrice' : null;

  static String? nameValidation(String? value) =>
      value!.trim().isEmpty ? 'Please enter valid name' : null;

  static String? descriptionValidation(String? value) =>
      value!.trim().isEmpty ? 'Please enter valid description' : null;
}
