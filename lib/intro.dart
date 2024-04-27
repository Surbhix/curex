import 'package:curex/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const curex());
}

// ignore: camel_case_types
class curex extends StatelessWidget {
  const curex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("                            cureX"),
          backgroundColor: const Color.fromARGB(255, 79, 180, 111),
        ),
        body: Container(
          height: 800,
          width: 415,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black,
                Color.fromARGB(255, 1, 30, 1),
              ],
            )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 300,
                width: 300,
                child: Image(
                  image: NetworkImage('https://i.pinimg.com/originals/b2/7b/27/b27b273820bda6dc143c802ba5c33e5b.png'),
                ),
              ),
              const SizedBox(height: 1),
              Row(
                children: [
                  // ignore: avoid_unnecessary_containers
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
