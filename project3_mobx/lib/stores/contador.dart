import "package:mobx/mobx.dart";

part 'contador.g.dart';

class Contador = _Contador with _$Contador;

abstract class _Contador with Store {
  @observable
  int valor = 0;

  @observable
  String id = "";

  @action
  void setValor() {
    valor++;
  }

  @action
  void setId(String id) {
    this.id = id;
  }
}
