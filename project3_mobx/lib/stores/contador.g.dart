// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contador.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Contador on _Contador, Store {
  final _$valorAtom = Atom(name: '_Contador.valor');

  @override
  int get valor {
    _$valorAtom.reportRead();
    return super.valor;
  }

  @override
  set valor(int value) {
    _$valorAtom.reportWrite(value, super.valor, () {
      super.valor = value;
    });
  }

  final _$idAtom = Atom(name: '_Contador.id');

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$_ContadorActionController = ActionController(name: '_Contador');

  @override
  void setValor() {
    final _$actionInfo =
        _$_ContadorActionController.startAction(name: '_Contador.setValor');
    try {
      return super.setValor();
    } finally {
      _$_ContadorActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setId(String id) {
    final _$actionInfo =
        _$_ContadorActionController.startAction(name: '_Contador.setId');
    try {
      return super.setId(id);
    } finally {
      _$_ContadorActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
valor: ${valor},
id: ${id}
    ''';
  }
}
