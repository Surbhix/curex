import 'package:curex/home.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     home: Scaffold(
      appBar:  AppBar(title: const Text("                            cureX"), backgroundColor: Color.fromARGB(255, 79, 180, 111)),
     backgroundColor:const Color.fromARGB(255, 252, 246, 246), 
    body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35, top: 230),
              child: const Text(
                'Welcome!',
                style: TextStyle(color:Color.fromARGB(255, 79, 180, 111), fontSize: 60, fontWeight: FontWeight.w700),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.43),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: const TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                               TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()));
                                },
                              
                             child: const Text(
                                'Sign in',
                                style: TextStyle( color:  Color.fromARGB(255, 79, 180, 111),
                                    fontSize: 27, fontWeight: FontWeight.w700),
                              ),
                               )
                            ],
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()));
                                },
                                child: const Text(
                                  'Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18),
                                ),
                                style: const ButtonStyle(),
                              ),
                              TextButton(
                                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()));},
                                  child: const Text(
                                    'Continue as guest',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18,
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
     ),
   );
  }
}