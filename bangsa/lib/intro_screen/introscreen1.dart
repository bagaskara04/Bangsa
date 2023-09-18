import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ClipPath(
        clipper: CustomClipPath(),
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // ignore: prefer_const_literals_to_create_immutables
              colors: [
                Color.fromARGB(255, 0, 33, 48),
                Color.fromARGB(255, 10, 99, 139),
              ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/intro1.png',
                  width: 250,
                  height: 250,
                ),
                SizedBox(height: 20),
                Text('Welcome',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Ovo",
                        color: Colors.white,
                        fontWeight: FontWeight.w700)),
                SizedBox(height: 20),
                Text('Start buying and selling',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Ovo",
                        color: Colors.white,
                        fontWeight: FontWeight.w700)),
                Text('any item from here',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Ovo",
                        color: Colors.white,
                        fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          height: 650,
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100); //kanan
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
