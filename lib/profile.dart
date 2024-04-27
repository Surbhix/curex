import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double coverHeight = 280;
  final double profileHeight = 144;
  final double top = 280 - (144 / 2); // Calculate top position

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          buildCoverImage(),
          buildProfileImage(),
          Positioned(
            top: top,
            child: buildCoverImage(),
          ),
          Positioned(
            top: coverHeight + 80, // Adjust the position of the text as per your requirement
            child: const Text(
              'Surbhi',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: coverHeight + 120,
            child: const Text(
              'Computer Science Engineering Student',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
          ),
          Positioned(
            top: coverHeight + 170,
            left: 10,
            child: const Text(
              'About',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: coverHeight + 215,
            left: 10,
            child: const Text(
              'Hi, this is Surbhi  and im just writing this to\ncheckout how it turns out on the screen. so,\nFlutter is a versatile and dynamic open-source UI\nsoftware development kit created by Google, known\nfor its ability to craft beautiful, natively compiled\napplications for mobile, web, and desktop.\nTrying to test out the scroll option',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 86, 86, 86),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://i.pinimg.com/originals/c0/43/63/c043630712db6eb7acd004d02f5ea80e.jpg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => Positioned(
        top: coverHeight - profileHeight / 2,
        child: CircleAvatar(
          radius: profileHeight / 2,
          backgroundColor: Colors.grey.shade800,
          backgroundImage: const NetworkImage(
              'https://i.pinimg.com/originals/00/62/87/006287d3aa9c240f2ca4fdfe90d67a39.jpg'),
        ),
      );
}