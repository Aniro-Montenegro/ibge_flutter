import 'package:flutter/material.dart';
import 'package:ibge/model/cnae_classes.dart';
import 'package:ibge/model/cnae_divisoes.dart';
import 'package:ibge/services/cnae_classes_service.dart';
import 'package:ibge/services/cnae_divisoes.dart';

class DivisoesPage extends StatefulWidget {
  const DivisoesPage({super.key});

  @override
  State<DivisoesPage> createState() => _DivisoesPageState();
}

class _DivisoesPageState extends State<DivisoesPage> {
  List<CnaeDivisoes> cnaeDivisoes = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Divisões'),
      ),
      body: FutureBuilder(
          future: CnaeDivisoesService().getCnaeDivisoes(),
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
                              snapshot.data![index].secao!.descricao ?? "",
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            leading: Text('Grupo: ${snapshot.data![index].secao!.id.toString()}'),
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
