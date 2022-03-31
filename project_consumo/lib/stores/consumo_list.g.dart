// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumo_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConsumoList on _ConsumoList, Store {
  final _$listAtom = Atom(name: '_ConsumoList.list');

  @override
  ObservableList<double> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<double> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$_ConsumoListActionController = ActionController(name: '_ConsumoList');

  @override
  double media() {
    final _$actionInfo =
        _$_ConsumoListActionController.startAction(name: '_ConsumoList.media');
    try {
      return super.media();
    } finally {
      _$_ConsumoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addConsumo(double con) {
    final _$actionInfo = _$_ConsumoListActionController.startAction(
        name: '_ConsumoList.addConsumo');
    try {
      return super.addConsumo(con);
    } finally {
      _$_ConsumoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void limparList() {
    final _$actionInfo = _$_ConsumoListActionController.startAction(
        name: '_ConsumoList.limparList');
    try {
      return super.limparList();
    } finally {
      _$_ConsumoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
list: ${list}
    ''';
  }
}
