import 'package:flutter/material.dart';
import 'package:osiki/features/intro%20pages/login_screen.dart';

class RegsiterScreen extends StatefulWidget {
  const RegsiterScreen({super.key});

  @override
  State<RegsiterScreen> createState() => _RegsiterScreenState();
}

class _RegsiterScreenState extends State<RegsiterScreen> {
  final bool _isLoading = false;
  void loadState(index) {
    setState(() {
      index = _isLoading;
    });
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
                    "Register an account if you are a new user or go back to the login page if you already have an account",
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
                height: 380,
                width: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "REGISTRATION",
                          style: TextStyle(
                            fontSize: 28,
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
                            const Text("Name"),
                            const SizedBox(height: 2.0),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: TextFormField(
                                autofocus: true,
                                autocorrect: true,
                                decoration: const InputDecoration(
                                  hintText: 'name',
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.person_2,
                                      color: Color.fromARGB(255, 4, 52, 91)),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text("Email"),
                            const SizedBox(height: 2.0),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: TextFormField(
                                obscureText: true,
                                autofocus: true,
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
                                color: Colors.amberAccent,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: TextFormField(
                                obscureText: true,
                                autofocus: true,
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
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()),
                                );
                              },
                              child: const Text(
                                  "Already have an account, Login here.."),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 4, 52, 91),
                      shadows: [
                        (Shadow(
                          color: Colors.black,
                          offset: Offset.zero,
                          blurRadius: 1.0,
                        )),
                      ],
                    ),
                    "By Regsitering an account, you Agree to our Terms and Services. Note: This app does not keep records of your personal data for maulicious purposes. Your personal data is secured. "),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () => {
                /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()),
                    ),*/
              },
              child: Container(
                height: 55,
                width: 272,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color.fromARGB(255, 4, 52, 91),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      selectionColor: Colors.amberAccent,
                      "REGISTER ACCOUNT",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 12.0),
                  ],
                ),
              ),
            ),
          ),
          /* Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: (const [
                    BoxShadow(
                      color: Color.fromARGB(255, 229, 226, 226),
                      blurRadius: 5.5,
                      offset: Offset.zero,
                      spreadRadius: 3.2,
                    ),
                  ]),
                ),
                height: 40,
                width: 40,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                    strokeWidth: 3.2,
                  ),
                ),
              ),
            ],
          ),
       */
        ],
      ),
    );
  }
}
