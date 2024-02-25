import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Print Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contenu imprimable',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // Logique pour déclencher l'impression
              },
              child: Text('Imprimer'),
            ),
          ],
        ),
      ),
    );
  }
}


// Future<void> _printContent() async {
//     final profile = await CapabilityProfile.load();
//     final printer = NetworkPrinter(PaperSize.mm80, profile);

//     final PosPrintResult res = await printer.connect('192.168.0.100', port: 9100);

//     if (res != PosPrintResult.success) {
//       print('Échec de la connexion à l\'imprimante');
//       return;
//     }

//     printer.text('Contenu imprimable', styles: PosStyles(align: PosAlign.center));

//     final PosPrintResult res2 = await printer.cut();
//     if (res2 != PosPrintResult.success) {
//       print('Erreur lors de la coupe du papier');
//     }

//     await printer.disconnect();
//   }
// }
