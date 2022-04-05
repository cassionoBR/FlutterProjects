abstract class JsonSerializable {
  Map<String, dynamic> toJSON();
}

class Pessoa implements JsonSerializable {
  String? name;
  String? idade;
  Pessoa({required this.idade, required this.name});

  @override
  Map<String, dynamic> toJSON() {
    int? age = int.tryParse(idade!);
    return {'Nome': name, 'Idade': age};
  }
}
