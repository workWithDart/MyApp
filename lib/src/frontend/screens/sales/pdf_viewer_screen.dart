import 'package:flutter/material.dart';
//import'dart:io';
//import 'package:pdf_flutter/pdf_flutter.dart';
//import 'package:path_provider/path_provider.dart';

class PdfViewerScreen extends StatelessWidget {
  // Vous pouvez passer des paramètres ici, tels que le chemin du fichier PDF
  final String pdfFilePath;

  PdfViewerScreen({required this.pdfFilePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visionneuse PDF'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Visionneuse PDF',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // Utilisez le widget PdfViewer pour afficher le fichier PDF
            // PdfViewer(
            //   filePath: pdfFilePath, // Utilisez le chemin du fichier PDF passé en paramètre
            //   assetOrUrl: false, // Définissez sur false si vous utilisez un chemin de fichier local
            // ),
          ],
        ),
      ),
    );
  }
}
