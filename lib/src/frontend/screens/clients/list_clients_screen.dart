import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/screens/clients/packaging_situation_screen.dart';
import 'package:my_app/src/frontend/models/clients/client.dart';

class ListClientsScreen extends StatefulWidget {
  const ListClientsScreen({Key? key}) : super(key: key);

  @override
  _ListClientsScreenState createState() => _ListClientsScreenState();
}

class _ListClientsScreenState extends State<ListClientsScreen> {
  // Déclarez la liste de clients ici
  final List<Client> clients = [
    Client(name: 'Client 1', registrationDate: DateTime.now(), packagingTransactions: []),
    Client(name: 'Client 2', registrationDate: DateTime.now(), packagingTransactions: []),
    // Ajoutez d'autres clients selon vos besoins
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Situation des Emballages'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Liste des Clients',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: clients.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(clients[index].name),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PackagingSituationScreen(
                            client: clients[index],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
