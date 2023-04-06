import 'package:flutter/material.dart';

import 'package:ibge/model/cnae_grupos.dart';

import 'package:ibge/services/cnae_grupos_service.dart';

class GruposPage extends StatefulWidget {
  final String? identificador;
  const GruposPage({super.key, this.identificador});

  @override
  State<GruposPage> createState() => _GruposPageState();
}

class _GruposPageState extends State<GruposPage> {
  List<CnaeGrupos> cnaeGrupos = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grupos'),
      ),
      body: FutureBuilder(
          future: CnaeGruposService().getCnaeGrupos(widget.identificador ?? ""),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              snapshot.data![index].descricao ?? "",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            leading: Text('ID: ${snapshot.data![index].id}'),
                          ),
                          ListTile(
                            title: Text(
                              snapshot.data![index].divisao!.descricao ?? "",
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            leading: Text('Divisao: ${snapshot.data![index].divisao!.id.toString()}'),
                          ),
                        ],
                      ),
                    );
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
