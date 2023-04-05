import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ibge/model/cnae_classes.dart';

class CnaeClassesService {
  static const String _url = 'https://servicodados.ibge.gov.br/api/v2/';

  Future<List<CnaeClasses>> getCnaeClasses() async {
    final response = await http.get(Uri.parse('${_url}cnae/classes'));

    List<CnaeClasses> secoes = [];

    if (response.statusCode == 200) {
      for (var secao in jsonDecode(response.body)) {
        secoes.add(CnaeClasses.fromJson(secao));
      }
      return secoes;
    } else {
      throw Exception('Failed to load secoes');
    }
  }
}
