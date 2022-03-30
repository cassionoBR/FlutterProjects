import 'package:flutter/foundation.dart';

class contador with ChangeNotifier {
  int valor = 0;

  void aumentar() {
    valor++;
    notifyListeners();
  }
}
