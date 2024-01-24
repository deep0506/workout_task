extension MaskedExtnesion on String {
  String get maskedNumber => replaceAll(RegExp(r'.(?=.{3})'), '*');
  String maskedEmail() {
    final index = lastIndexOf('@');
    final firstname = substring(0, index);
    final mail = substring(lastIndexOf('@'));
    return firstname.substring(0, 3).padRight(firstname.length, '*') + mail;
  }
}

extension Required on String {
  String get required => '$this*';
}
