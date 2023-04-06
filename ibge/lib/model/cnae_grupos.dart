class CnaeGrupos {
  String? id;
  String? descricao;
  Divisao? divisao;
  List<String>? observacoes;

  CnaeGrupos({id, descricao, divisao, observacoes});

  CnaeGrupos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descricao = json['descricao'];
    divisao = json['divisao'] != null ? Divisao.fromJson(json['divisao']) : null;
    observacoes = json['observacoes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['descricao'] = descricao;
    if (divisao != null) {
      data['divisao'] = divisao!.toJson();
    }
    data['observacoes'] = observacoes;
    return data;
  }
}

class Divisao {
  String? id;
  String? descricao;
  Secao? secao;

  Divisao({id, descricao, secao});

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

  Secao({id, descricao});

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
