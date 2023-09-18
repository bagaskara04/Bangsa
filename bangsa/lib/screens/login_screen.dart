import 'package:bangsa/homepage.dart';
import 'package:flutter/material.dart';
import 'package:bangsa/components/components.dart';
import 'package:bangsa/components/under_part.dart';
import 'package:bangsa/constant.dart';
import 'package:bangsa/screens/forgot_password.dart';
import 'package:bangsa/screens/screens.dart';
import 'package:bangsa/widgets/widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
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
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ForgotPassword();
                      }));
                    },
                    child: Center(
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 253, 253),
                          fontFamily: 'Poppins',
                          fontSize: 25.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 0),
                  // const Upside(
                  //   imgUrl: "assets/login.png",
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("assets/login.png"),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 90.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          iconButton(context),
                          const SizedBox(
                            height: 20,
                          ),
                          Form(
                            child: Column(
                              children: [
                                Text(
                                  'Login to your account',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 15),
                                const RoundedInputField(
                                    hintText: "Username", icon: Icons.people),
                                SizedBox(height: 10),
                                const RoundedPasswordField(),
                                SizedBox(height: 140),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35),
                                  child: Container(
                                    width: size.width,
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
                                        borderRadius:
                                            BorderRadius.circular(35)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(
                                        child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const HomePage()));
                                            },
                                            child: Text(
                                              'LOGIN',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                UnderPart(
                                  title: "Don't have an account?",
                                  navigatorText: "Register here",
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUpScreen()));
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return ForgotPassword();
                                      }));
                                    },
                                    child: Text(
                                      'Forgot password?',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Ovo',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// switchListTile() {
//   return Padding(
//     padding: const EdgeInsets.only(left: 50, right: 40),
//     child: SwitchListTile(
//       dense: true,
//       title: const Text(
//         'Remember Me',
//         style: TextStyle(fontSize: 16, fontFamily: 'Ovo'),
//       ),
//       value: true,
//       activeColor: kPrimaryColor,
//       onChanged: (val) {},
//     ),
//   );
// }

iconButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      // RoundedIcon(imageUrl: "assets/google.png"),
      SizedBox(
        width: 20,
      ),
      //  RoundedIcon(imageUrl: "assets/twitter.png"),
      SizedBox(
        width: 20,
      ),
      // RoundedIcon(imageUrl: "assets/facebook.png"),
    ],
  );
}
