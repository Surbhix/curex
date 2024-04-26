import 'package:flutter/material.dart';

class Medsearch extends StatefulWidget {
  const Medsearch({super.key});

  @override
  State<Medsearch> createState() => _MedsearchState();
}

class _MedsearchState extends State<Medsearch> {
   // This holds a list of fiction users
  // You can use data fetched from a database or a server as well
  final List<Map<String, dynamic>> _allMedicine = [
    {"id": 1, "name": "Crocin Advance 500mg", "Component": "Paracetamol / Acetaminophen(500.0 Mg)"},
    {"id": 2, "name": "Disprin Regular 325mg ", "Component": "Aspirin / Acetyl Salicylic Acid(325.0 Mg)"},
    {"id": 3, "name": "Combiflam ", "Component": "Ibuprofen(400.0 Mg) + Paracetamol / Acetaminophen(325.0 Mg)"},
    {"id": 4, "name": "Dolo 650mg", "Component": "Paracetamol / Acetaminophen(650.0 Mg)"},
    {"id": 5, "name": "Saridon ", "Component": "Paracetamol IP 650 mg Caffeine (anhydrous) IP 50 mg"},
    {"id": 6, "name": "Sumo Cold", "Component": "Paracetamol/Acetaminophen(500.0 Mg) + Phenylephrine Hydrochloride(5.0 Mg) + Caffeine(30.0 Mg) + Diphenhydramine(25.0 Mg)"},
    {"id": 7, "name": "Lametec Dt 25mg", "Component": "Lamotrigine(25.0 Mg)"},
    {"id": 8, "name": "Ecosprin 75mg ", "Component": "Aspirin / Acetyl Salicylic Acid(75.0 Mg)"},
    {"id": 9, "name": "Tripsan D", "Component": "Diclofenac(50.0 Mg) + Trypsin-Chymotrypsin(50000.0 Iu)"},
    {"id": 10, "name": "Nailrox Nail Lacquer 5ml", "Component": "Ciclopirox(8.0 %)"},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundMedicine = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundMedicine = _allMedicine;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allMedicine;
    } else {
      results = _allMedicine
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundMedicine = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Medicine'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundMedicine.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundMedicine.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundMedicine[index]["id"]),
                  color: Colors.purple,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Text(
                      _foundMedicine[index]["id"].toString(),
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    title: Text(_foundMedicine[index]['name'].toString(),
                        style: const TextStyle( color: Colors.white, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                        '${_foundMedicine[index]["Component"].toString()}',
                        style: const TextStyle( color: Colors.white)) ,
                  ),
                ),
              )
                  : const Text(
                'No results found',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}