import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/models/clients/client.dart';
import 'package:my_app/src/frontend/models/clients/packaging_transaction.dart';
import 'package:provider/provider.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:my_app/src/frontend/Themes/theme_manager.dart';
import 'package:my_app/src/frontend/screens/orders/evaluate_order_screen.dart';
import 'package:my_app/src/frontend/screens/products/add_product_screen.dart';
import 'package:my_app/src/frontend/screens/products/print_screen.dart';
import 'package:my_app/src/frontend/widgets/drawer.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
   runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeManager(),
      
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<Client> clients = [
    Client(
      name: 'Client 1',
      packagingTransactions: [
        PackagingTransaction(
          date: DateTime.now(),
          entryC12: 20,
          entryC20: 15,
          entryC24: 10,
          exitC12: 5,
          exitC20: 10,
          exitC24: 2,
        ),
      ], 
      registrationDate: DateTime.now(), 
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MonApp',
      theme: Provider.of<ThemeManager>(context).lightTheme,
      darkTheme: Provider.of<ThemeManager>(context).darkTheme,
      themeMode: Provider.of<ThemeManager>(context).themeMode,
     // primaryTextTheme: GoogleFonts.latoTextTheme(),
      home: MyHomePage(),
      initialRoute: "/",
      routes: {
    '/add_product': (context) => AddProductScreen(),
    '/evaluate_order': (context) => EvaluateOrderScreen(),
     '/print_screen': (context) => PrintScreen(),
     '/evaluate_order_screen': (context) => EvaluateOrderScreen(),
  
  },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),
      drawer: AppDrawer(clients: [
        Client(name: 'Client 1', registrationDate: DateTime.now(), packagingTransactions: []),
    Client(name: 'Client 2', registrationDate: DateTime.now(), packagingTransactions: []),
    // Ajoutez d'autres clients selon vos besoins
      ],),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Provider.of<ThemeManager>(context, listen: false).toggleTheme();
          },
          child: Text('Basculer le thème'),
        ),
      ),
    );
  }

// class MyHomePage extends StatelessWidget {
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   @override
//   Widget build(BuildContext context) {
//       AppBar(
//         title: Text('Accueil'),
//       ),
//       drawer: AppDrawer(),
//       body: Center(
//         child: Text('Contenu de l\'écran principal'),
//       ),
//     );
//   }

  // Initialiser les notifications
//   Future<void> _initNotifications() async {
//     final AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('app_icon');
//     final IOSInitializationSettings initializationSettingsIOS =
//         IOSInitializationSettings();
//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//             android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
//     await flutterLocalNotificationsPlugin.initialize(initializationSettings,
//         onSelectNotification: _onSelectNotification);
//   }

//   // Gérer la sélection de la notification
//   Future<void> _onSelectNotification(String payload) async {
//     // Mettez ici le code pour traiter la sélection de la notification
//   }

//   // Afficher une notification
//   Future<void> _showNotification() async {
//     const AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails(
//       'your_channel_id',
//       'Your Channel Name',
//       'Your Channel Description',
//       importance: Importance.max,
//       priority: Priority.high,
//       ticker: 'ticker',
//     );
//     const NotificationDetails platformChannelSpecifics =
//         NotificationDetails(android: androidPlatformChannelSpecifics);
//     await flutterLocalNotificationsPlugin.show(
//       0,
//       'Titre de la notification',
//       'Corps de la notification',
//       platformChannelSpecifics,
//       payload: 'item x',
//     );
//   }
// }


// class AppDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           DrawerHeader(
//             decoration: BoxDecoration(
//               color: Colors.blue,
//             ),
//             child: Text(
//               'MonApp',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//               ),
//             ),
//           ),
//           ListTile(
//             title: Text('Accueil'),
//             onTap: () {
//               // Naviguer vers l'écran d'accueil ou effectuer d'autres actions
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             title: Text('Produits'),
//             onTap: () {
//               // Naviguer vers l'écran des produits ou effectuer d'autres actions
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             title: Text('Commandes'),
//             onTap: () {
//               // Naviguer vers l'écran des commandes ou effectuer d'autres actions
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             title: Text('Clients'),
//             onTap: () {
//               // Naviguer vers l'écran de gestion des clients ou effectuer d'autres actions
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             title: Text('Gestion financière'),
//             onTap: () {
//               // Naviguer vers l'écran de gestion financière ou effectuer d'autres actions
//               Navigator.pop(context);
//             },
//           ),
//           Divider(),
//           ListTile(
//             title: Text('Paramètres'),
//             onTap: () {
//               // Naviguer vers l'écran des paramètres ou effectuer d'autres actions
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             title: Text('Déconnexion'),
//             onTap: () {
//               // Effectuer des actions de déconnexion
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             title: Text('Afficher une notification'),
//             onTap: () {
//               // Afficher une notification
//               _showNotification();
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       ),
//     );
//   }
}
