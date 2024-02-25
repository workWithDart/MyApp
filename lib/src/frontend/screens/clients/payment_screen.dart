import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String? selectedClient;
  double amount = 0.0;
  DateTime? paymentDate;
  TextEditingController clientPaymentDateController = TextEditingController();

  // Liste de clients (à remplacer par vos propres données)
  List<String> clients = ['Client 1', 'Client 2', 'Client 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saisie des Règlements'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Choix du client
            DropdownButton<String>(
              value: selectedClient,
              hint: Text('Choisissez le Client'),
              onChanged: (String? newValue) {
                setState(() {
                  selectedClient = newValue;
                });
              },
              items: clients.map<DropdownMenuItem<String>>((String? value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value ?? ''),
                );
              }).toList(),
            ),

            SizedBox(height: 20),

            // Saisie du montant
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Montant'),
              onChanged: (value) {
                setState(() {
                  amount = double.tryParse(value) ?? 0.0;
                });
              },
            ),

            SizedBox(height: 20),

            // Saisie de la date de règlement du client
            GestureDetector(
              onTap: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );

                if (pickedDate != null && pickedDate != paymentDate) {
                  setState(() {
                    paymentDate = pickedDate;
                    clientPaymentDateController.text =
                        '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}';
                  });
                }
              },
              child: AbsorbPointer(
                child: TextFormField(
                  controller: clientPaymentDateController,
                  decoration: InputDecoration(labelText: 'Date de Règlement du Client'),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Enregistrement du règlement
            ElevatedButton(
              onPressed: () {
                if (selectedClient != null && amount > 0 && paymentDate != null) {
                  // Logique pour enregistrer le règlement avec la date et les autres informations
                  // Utilisez les valeurs de selectedClient, amount et paymentDate
                  print('Enregistrement du règlement : Client=$selectedClient, Montant=$amount, Date=$paymentDate');
                } else {
                  // Afficher un message d'erreur si toutes les informations nécessaires ne sont pas fournies
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Veuillez remplir toutes les informations avant d\'enregistrer.'),
                  ));
                }
              },
              child: Text('Enregistrer le Règlement'),
            ),
          ],
        ),
      ),
    );
  }
}
