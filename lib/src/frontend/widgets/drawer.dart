import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/constants/size_constants.dart';
import 'package:my_app/src/frontend/models/clients/client.dart';
import 'package:my_app/src/frontend/screens/clients/client_intermediate_screen.dart';
import 'package:my_app/src/frontend/screens/clients/payment_screen.dart';
import 'package:my_app/src/frontend/screens/orders/order_screen.dart';
import 'package:my_app/src/frontend/screens/products/product_list_screen.dart';
import 'package:my_app/src/frontend/screens/sales/sale_screen.dart';
import 'package:my_app/src/frontend/screens/stock/debt_screen.dart';
import 'package:my_app/src/frontend/screens/stock/inventory_entry_form.dart';
import 'package:my_app/src/frontend/widgets/deconnexion_screen.dart';
import 'package:my_app/src/frontend/widgets/notifications.dart';

class AppDrawer extends StatelessWidget {
   late final List<Client> clients;

   AppDrawer({Key? key, required List<Client> clients}) : super(key: key) {
    this.clients = clients;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          //   child: Text(
          //     'Nom de votre application',
          //     style: ColorConstants.drawerTextColor,
          //   ),
          // ),
          vspace32,
          ListTile(
            title: Text('Accueil'),
            leading: Icon(Icons.holiday_village_rounded),
            trailing: Icon(Icons.notification_add),
            onTap: () {
              // Mettez ici la logique de navigation pour l'accueil
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Produits'),
            onTap: () {
              // Naviguer vers la page "Produits"
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductListScreen()),
                );
              // Mettez ici la logique de navigation pour la gestion des produits
             // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Commandes'),
            onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderScreen()),
                ); 
              // Mettez ici la logique de navigation pour la gestion des commandes
              //Navigator.pop(context);
            },
          ),
           ListTile(
            title: Text('Clients'),
            onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClientIntermediateScreen()),
                );
            },
          ),
          ListTile(
            title: Text('Ventes'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SaleScreen()),
                );
              // Mettez ici la logique de navigation pour la gestion des ventes
             // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Règlements'),
            onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>PaymentScreen()),
                );
              // Mettez ici la logique de navigation pour la situation des créances/dettes
              //Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Situation Stock'),
            onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InventoryEntryForm()),
                );
              // Mettez ici la logique de navigation pour la situation du stock
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Situation Créances/Dettes'),
            onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DebtScreen()),
                );
              // Mettez ici la logique de navigation pour la situation des créances/dettes
              //Navigator.pop(context);
            },
          ),
          ListTile(
             title: Text('Notifications'),
               onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationsScreen()),
                );
               // Afficher une notification
              // _showNotification();
              // Navigator.pop(context);
             },
           ),
           ListTile(
            title: Text('Déconnexion'),
            onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeconnexionScreen()),
                );

              // Effectuer des actions de déconnexion
              //Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
