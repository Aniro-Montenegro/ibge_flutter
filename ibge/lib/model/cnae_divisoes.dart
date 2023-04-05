class CnaeDivisoes {
  String? id;
  String? descricao;
  Secao? secao;
  List<String>? observacoes;

  CnaeDivisoes({this.id, this.descricao, this.secao, this.observacoes});

  CnaeDivisoes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descricao = json['descricao'];
    secao = json['secao'] != null ? Secao.fromJson(json['secao']) : null;
    observacoes = json['observacoes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['descricao'] = descricao;
    if (secao != null) {
      data['secao'] = secao!.toJson();
    }
    data['observacoes'] = observacoes;
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
