import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/screens/clients/add_client_screen.dart';
import 'package:my_app/src/frontend/screens/clients/list_clients_screen.dart';
import 'package:my_app/src/frontend/screens/clients/payment_screen.dart';

class IntroTabBar extends StatelessWidget {
  const IntroTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Ajouter un client',
              ),
              Tab(
                text: 'Liste des clients',
              ),
              Tab(
                text: 'Situation emballages',
              ),
              Tab(
                text: 'Opération clients',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          AddClientScreen(),
          const ListClientsScreen(),
          // PackagingSituationScreen(),
          PaymentScreen()
        ]),
      ),
    );
  }
}
