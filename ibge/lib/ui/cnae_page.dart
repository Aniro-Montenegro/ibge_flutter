import 'package:flutter/material.dart';
import 'package:ibge/model/cnae_classes.dart';
import 'package:ibge/services/cnae_classes_service.dart';

class CnaePage extends StatefulWidget {
  const CnaePage({super.key});

  @override
  State<CnaePage> createState() => _CnaePageState();
}

class _CnaePageState extends State<CnaePage> {
  List<CnaeClasses> cnaeClasses = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CNAE'),
      ),
      body: FutureBuilder(
          future: CnaeClassesService().getCnaeClasses(),
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
                              snapshot.data![index].grupo!.descricao ?? "",
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            leading: Text('Grupo: ${snapshot.data![index].grupo!.id.toString()}'),
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
