import 'package:flutter/material.dart';
import '../../api/services/signin_auth_service.dart';
import '../../api/services/signup_auth_service.dart';
import '../navigations/home.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController2 = TextEditingController();
  final TextEditingController passwordController2 = TextEditingController();
  final SignInAuthService authservice2 = SignInAuthService();

  void signinUser() {
    authservice2.signInUser(
      context: context,
      email: emailController2.text,
      password: passwordController2.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Osiki Emergency App",
                    style: TextStyle(
                      color: Color.fromARGB(255, 4, 52, 91),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Login if you have an account or Register with your index number",
                    style: TextStyle(
                      color: Color.fromARGB(255, 4, 52, 91),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: (const [
                  BoxShadow(
                    color: Color.fromARGB(255, 229, 226, 226),
                    blurRadius: 5.5,
                    offset: Offset.zero,
                    spreadRadius: 3.2,
                  ),
                ]),
              ),
              height: 400,
              width: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 4, 52, 91),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Email"),
                          const SizedBox(height: 2.0),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 4, 52, 91),
                              ),
                              //color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: TextFormField(
                              controller: emailController2,
                              autocorrect: true,
                              decoration: const InputDecoration(
                                hintText: 'email',
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.mail,
                                    color: Color.fromARGB(255, 4, 52, 91)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text("Password"),
                          const SizedBox(height: 2.0),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 4, 52, 91),
                              ),
                              //color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: TextFormField(
                              controller: passwordController2,
                              obscureText: true,
                              autocorrect: true,
                              decoration: const InputDecoration(
                                hintText: 'password',
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock_rounded,
                                    color: Color.fromARGB(255, 4, 52, 91)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: signinUser,
                      child: Container(
                        height: 55,
                        width: 272,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color.fromARGB(255, 4, 52, 91),
                        ),
                        child: const Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegsiterScreen(),
                                ),
                              );
                            },
                            child: const Text(
                                "Don't have an account, Register here.."),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 4, 52, 91),
                    ),
                    "By Logging in, you Agree to our Terms and Services. Note: This app does not keep records of your personal data for maulicious purposes. Your personal data is secured. "),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
