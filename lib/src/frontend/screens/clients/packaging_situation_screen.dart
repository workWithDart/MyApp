import 'package:flutter/material.dart';
import 'package:my_app/src/frontend/models/clients/client.dart';

class PackagingSituationScreen extends StatelessWidget {
  final Client client;

  PackagingSituationScreen({required this.client});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Situation des Emballages de ${client.name}'),
      ),
      body: SingleChildScrollView(
        child: DataTable(
          columns: [
            DataColumn(label: Text('Date')),
            DataColumn(label: Text('Entrée C12')),
            DataColumn(label: Text('Entrée C20')),
            DataColumn(label: Text('Entrée C24')),
            DataColumn(label: Text('Sortie C12')),
            DataColumn(label: Text('Sortie C20')),
            DataColumn(label: Text('Sortie C24')),
            DataColumn(label: Text('Solde C12')),
            DataColumn(label: Text('Solde C20')),
            DataColumn(label: Text('Solde C24')),
          ],
          rows: client.packagingTransactions.map((transaction) {
            return DataRow(cells: [
              DataCell(Text(transaction.date.toString())),
              DataCell(Text(transaction.entryC12.toString())),
              DataCell(Text(transaction.entryC20.toString())),
              DataCell(Text(transaction.entryC24.toString())),
              DataCell(Text(transaction.exitC12.toString())),
              DataCell(Text(transaction.exitC20.toString())),
              DataCell(Text(transaction.exitC24.toString())),
              DataCell(Text(transaction.balanceC12.toString())),
              DataCell(Text(transaction.balanceC20.toString())),
              DataCell(Text(transaction.balanceC24.toString())),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:my_app/src/frontend/models/clients/client.dart';
// import 'package:my_app/src/frontend/constants/breakpoint.dart';

// class PackagingSituationScreen extends StatelessWidget {
//   final Client client;

//   PackagingSituationScreen({required this.client});

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     bool isDesktop = screenWidth > Breakpoint.desktop;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Situation des Emballages de ${client.name}'),
//       ),
//       body: SingleChildScrollView(
//         child: DataTable(
//           // ... DataTable code

//           // Example: Adjusting row height for desktop
//           dataRowHeight: isDesktop ? 60.0 : null,

//           // Example: Applying different text styles based on screen size
//           columns: [
//             DataColumn(label: Text('Date')),
//             DataColumn(label: Text('Entrée C12', style: isDesktop ? TextStyle(fontSize: 18.0) : null)),
//             DataColumn(label: Text('Entrée C20')),
//             DataColumn(label: Text('Entrée C24')),
//             // ... Other columns
//           ],

//           rows: client.packagingTransactions.map((transaction) {
//             return DataRow(cells: [
//               DataCell(Text(transaction.date.toString())),
//               DataCell(Text(transaction.entryC12.toString())),
//               DataCell(Text(transaction.entryC20.toString())),
//               DataCell(Text(transaction.entryC24.toString())),
//               // ... Other cells
//             ]);
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
