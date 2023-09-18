import 'package:flutter/material.dart';
import 'package:bangsa/components/components.dart';
import 'package:bangsa/components/under_part.dart';
import 'package:bangsa/constant.dart';
import 'package:bangsa/screens/screens.dart';
import 'package:bangsa/widgets/widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Registration",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 253, 253),
                      fontFamily: 'Poppins',
                      fontSize: 25.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(height: 0),
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/register.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
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
                        //  iconButton(context),
                        const SizedBox(
                          height: 10,
                        ),

                        Form(
                          child: Column(
                            children: [
                              Text(
                                'Create a new account',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              const RoundedInputField(
                                  hintText: "Email", icon: Icons.email),
                              const RoundedInputField(
                                  hintText: "Username", icon: Icons.person),
                              const RoundedInputField(
                                  hintText: "Phone Number", icon: Icons.person),
                              const RoundedPasswordField(),
                              const RoundedInputField(
                                  hintText: "Confirm Password",
                                  icon: Icons.person),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 35),
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
                                      borderRadius: BorderRadius.circular(35)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const LoginScreen()));
                                          },
                                          child: Text(
                                            'REGISTER',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              UnderPart(
                                title: "Already have an account?",
                                navigatorText: "Login here",
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen()));
                                },
                              ),
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
    );
  }
}
