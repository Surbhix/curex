import 'package:curex/pharm.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Search Medicine',
      home: MedSearch(),
    );
  }
}

class MedSearch extends StatefulWidget {
  const MedSearch({Key? key}) : super(key: key);

  @override
  State<MedSearch> createState() => _MedSearchState();
}

class _MedSearchState extends State<MedSearch> {
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

  List<Map<String, dynamic>> _foundMedicine = [];

  @override
  initState() {
    _foundMedicine = _allMedicine;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allMedicine;
    } else {
      results = _allMedicine
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundMedicine = results;
    });
  }

  void _navigateToPharmacyPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Pharmacy(),
      ),
    );
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
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
              ),
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
                        child: GestureDetector(
                          onTap: () => _navigateToPharmacyPage(context), // Navigate to Pharmacy page
                          child: ListTile(
                            leading: Text(
                              _foundMedicine[index]["id"].toString(),
                              style: const TextStyle(fontSize: 24, color: Colors.white),
                            ),
                            title: Text(
                              _foundMedicine[index]['name'].toString(),
                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              '${_foundMedicine[index]["Component"].toString()}',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
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


