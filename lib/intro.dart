import 'package:curex/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const curex());
}

class curex extends StatelessWidget {
  const curex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("                            cureX"),
          backgroundColor: Color.fromARGB(255, 79, 180, 111),
        ),
        body: Container(
          height: 800,
          width: 415,
          color: const Color(0xFF000000),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                color: const Color(0xFF000000),
                child: const Image(
                  image: NetworkImage('https://i.pinimg.com/originals/4d/73/71/4d737151a04e3b8633d27c25a2c6cebd.jpg'),
                ),
              ),
              const SizedBox(height: 1),
              Row(
                children: [
                  Container(
                    child: const Text(
                    '     Symptom Checker',
                      style: TextStyle(
                        fontSize: 35,
                        color: Color.fromARGB(255, 79, 180, 111),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const login(),
              ),
            );
          },
          child: const Text('Click'),
        ),
      ),
    );
  }
}
