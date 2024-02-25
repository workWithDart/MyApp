import 'package:flutter/material.dart';
//import 'package:pdf_flutter/pdf_flutter.dart'; // Assurez-vous d'ajouter cette dépendance

class PdfInvoiceScreen extends StatelessWidget {
  // Vous pouvez passer des paramètres ici, tels que les détails de la facture en PDF
  // final InvoiceDetails invoiceDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facture en PDF'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Facture en PDF',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            
            // Utilisez le widget PdfViewer pour afficher la facture en PDF
            // Assurez-vous d'avoir un fichier PDF valide ou une URL vers un PDF
            // PdfViewer(
            //   filePath: 'assets/invoice.pdf', // Remplacez par le chemin de votre fichier PDF
            //   assetOrUrl: true, // Définissez sur true si vous utilisez un fichier PDF à partir des actifs
            // ),
          ],
        ),
      ),
    );
  }
}
