// import 'package:com.miochoice.sales/src/ui/home/nb_login/proposal/payment/payment.dart';
// import 'package:flutter/foundation.dart';

extension FicListExtension<T> on List<T> {
  /// Maps each element of the list.
  /// The [map] function gets both the original [item] and its [index].
  Iterable<E> mapIndexed<E>(E Function(int index, T item) map) sync* {
    for (var index = 0; index < length; index++) {
      yield map(index, this[index]);
    }
  }
}

// extension GetRoute on NestedPage {
//   String get route => describeEnum(this);
// }
