import 'package:curex/medsearch.dart';
import 'package:flutter/material.dart';
import 'package:curex/src/features/splash/splash_screen.dart';

class NavigationButton extends StatelessWidget {
  final String buttonText;
  final String routeName;

  const NavigationButton({
    required Key key,
    required this.buttonText,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName); 
      },
      child: Container(
        width: 80,
        height: 30,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical, 
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.6,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.5,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 79, 180, 111),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      ),
                    ),
                    child: Image.network(
                      'https://i.pinimg.com/originals/ec/09/d6/ec09d64d037b29a7d9af8d08fa4bd04e.png',
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                ],
              ),
              const Positioned(
                top: 75,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Your own\n AI Health\nSpecialist",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 323,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      " Common Symptoms",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2.5 + 35,
                left: 0,
                right: 0,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10, top: 30),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width / 2.7,
                        height: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 147, 234, 166),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network('https://i.pinimg.com/originals/e1/29/71/e12971a66a3d4a274073a7abd540d4f0.png'),
                            const NavigationButton(
                              key: ValueKey("fever"),
                              buttonText: "Fever",
                              routeName: "fev", // Check if the routeName matches
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width / 2.7,
                        height: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 147, 234, 166),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network('https://i.pinimg.com/originals/4c/ed/37/4ced378c509c7eff7fee58a679a6f2e5.png', height: 107),
                            const NavigationButton(
                              key: ValueKey("cough"),
                              buttonText: "Cough",
                              routeName: "cough", // Check if the routeName matches
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width / 2.7,
                        height: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 147, 234, 166),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network('https://i.pinimg.com/originals/9e/78/d0/9e78d0bbf50cd3fe8be37ca5ae391053.png', height: 107),
                            const NavigationButton(
                              key: ValueKey("headache"),
                              buttonText: "Headache",
                              routeName: "headache", // Check if the routeName matches
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2.5 + 220,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 7), 
                    Row(
                      children: [
                        TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MedSearch()));
                                },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2 - 17,
                            height: 150,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 73, 215, 151),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network(
                                  'https://i.pinimg.com/originals/ed/03/77/ed0377ff3e4ab48f4d3696e44526a0f4.png',
                                  height: 100,
                                ),
                                const Text(
                                  "Locate the nearest \n        pharmacy",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white ),                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 0),
                        TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const  SplashScreen()));
                                },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2 - 17,
                            height: 150,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 73, 215, 151),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network(
                                  'https://i.pinimg.com/originals/5a/c2/8e/5ac28e3b1016717e01144ce05e1f7817.png',
                                  height: 100,
                                ),
                                const Text(
                                  "Chat with our \n      AI bot!",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
                                  selectionColor: Colors.amber,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            
           ],
          ),
        ),
      ),
    );
  }
}
