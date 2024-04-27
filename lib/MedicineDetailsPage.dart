import 'package:flutter/material.dart';

class MedicineDetailsPage extends StatelessWidget {
  const MedicineDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
     ),
);
}
}