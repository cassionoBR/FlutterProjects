import "package:mobx/mobx.dart";

part "consumo_list.g.dart";

class ConsumoList = _ConsumoList with _$ConsumoList;

abstract class _ConsumoList with Store {
  @observable
  ObservableList<double> list = new ObservableList<double>();

  @action
  double media() {
    double sum = 0;
    if (list.length > 0) {
      list.forEach((element) {
        sum += element;
      });
    } else {
      return 0.00;
    }
    return sum / list.length;
  }

  @action
  void addConsumo(double con) {
    list.add(con);
  }

  @action
  void limparList() => list.clear();
}
