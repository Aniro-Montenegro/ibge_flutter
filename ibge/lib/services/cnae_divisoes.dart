import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';

import 'package:ibge/model/cnae_divisoes.dart';
import 'package:ibge/services/http_intercepros.dart';

class CnaeDivisoesService {
  static const String _url = 'https://servicodados.ibge.gov.br/api/v2/';

  http.Client client = InterceptedClient.build(
    interceptors: [
      LoggingInterceptor(),
    ],
  );

  Future<List<CnaeDivisoes>> getCnaeDivisoes() async {
    final response = await client.get(Uri.parse('${_url}cnae/divisoes'));

    List<CnaeDivisoes> divisoes = [];

    if (response.statusCode == 200) {
      for (var divisao in jsonDecode(response.body)) {
        divisoes.add(CnaeDivisoes.fromJson(divisao));
      }
      return divisoes;
    } else {
      throw Exception('Failed to load secoes');
    }
  }
}
