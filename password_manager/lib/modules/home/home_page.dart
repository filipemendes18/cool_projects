import 'package:flutter/material.dart';
import 'package:password_manager/modules/home/repositories/home_repository_impl.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final repository = HomeRepositoryImpl();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('HomePage'),
          bottom: const TabBar(tabs: [
            Tab(
              text: "Future",
            ),
            Tab(
              text: "Stream",
            )
          ]),
        ),
        body: TabBarView(children: [
          FutureBuilder<List<Map>>(
              future: repository.getTarefas(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Text('Erro aconteceu');
                } else if (snapshot.hasData) {
                  final list = snapshot.data;
                  return ListView.builder(
                      itemCount: list?.length,
                      itemBuilder: ((context, index) => ListTile(
                            title: Text('${list?[index]['data']['name']}'),
                          )));
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              }),
          StreamBuilder<List<Map>>(
              stream: repository.streamTarefas(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Text('Erro aconteceu');
                } else if (snapshot.hasData) {
                  final list = snapshot.data;
                  return ListView.builder(
                      itemCount: list?.length,
                      itemBuilder: ((context, index) => ListTile(
                            title: Text('${list?[index]['data']['name']}'),
                          )));
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              }),
        ]),
      ),
    );
  }
}
