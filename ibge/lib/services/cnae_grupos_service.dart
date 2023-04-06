import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';

import 'package:ibge/model/cnae_grupos.dart';
import 'package:ibge/services/http_intercepros.dart';

class CnaeGruposService {
  static const String _url = 'https://servicodados.ibge.gov.br/api/v2/';
  http.Client client = InterceptedClient.build(
    interceptors: [
      LoggingInterceptor(),
    ],
  );

  Future<List<CnaeGrupos>> getCnaeGrupos(String identificador) async {
    final uri = Uri.parse('${_url}cnae/divisoes/$identificador/grupos');
    final response = await client.get(uri);

    List<CnaeGrupos> grupos = [];

    if (response.statusCode == 200) {
      for (var grupo in jsonDecode(response.body)) {
        grupos.add(CnaeGrupos.fromJson(grupo));
      }
      return grupos;
    } else {
      throw Exception('Failed to load grupos');
    }
  }
}
