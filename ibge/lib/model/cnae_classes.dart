class CnaeClasses {
  String? id;
  String? descricao;
  Grupo? grupo;
  List<String>? observacoes;

  CnaeClasses({this.id, this.descricao, this.grupo, this.observacoes});

  CnaeClasses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descricao = json['descricao'];
    grupo = json['grupo'] != null ? Grupo.fromJson(json['grupo']) : null;
    observacoes = json['observacoes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['descricao'] = descricao;
    if (grupo != null) {
      data['grupo'] = grupo!.toJson();
    }
    data['observacoes'] = observacoes;
    return data;
  }
}

class Grupo {
  String? id;
  String? descricao;
  Divisao? divisao;

  Grupo({this.id, this.descricao, this.divisao});

  Grupo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descricao = json['descricao'];
    divisao = json['divisao'] != null ? Divisao.fromJson(json['divisao']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['descricao'] = descricao;
    if (divisao != null) {
      data['divisao'] = divisao!.toJson();
    }
    return data;
  }
}

class Divisao {
  String? id;
  String? descricao;
  Secao? secao;

  Divisao({this.id, this.descricao, this.secao});

  Divisao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descricao = json['descricao'];
    secao = json['secao'] != null ? Secao.fromJson(json['secao']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['descricao'] = descricao;
    if (secao != null) {
      data['secao'] = secao!.toJson();
    }
    return data;
  }
}

class Secao {
  String? id;
  String? descricao;

  Secao({this.id, this.descricao});

  Secao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['descricao'] = descricao;
    return data;
  }
}
