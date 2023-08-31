import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:osiki/navigations/map_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _callPrompt = "";

  void _callCenter() {
    setState(() {
      _callPrompt = "Help is underway..!!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 2.2,
        backgroundColor: const Color.fromARGB(255, 4, 52, 91),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        title: SizedBox(
          height: 35,
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.menu,
                  color: Color.fromARGB(255, 4, 52, 91),
                ),
              ),
              const Text(
                "OSIKI EMERGENCY",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.person_3_outlined,
                  color: Color.fromARGB(255, 4, 52, 91),
                ),
              ),
            ],
          ),
        ),
        shadowColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 4, 52, 91),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    "Click on the bell icon to\n" "Call Emergency Now",
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => {
                showDialog(
                  context: context,
                  builder: (buildContext) => AlertDialog(
                    icon: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 4, 52, 91),
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.alarm,
                            size: 40,
                            color: Colors.red,
                          ),
                          Text(
                            "HELP UNDERWAY...!!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    backgroundColor: Colors.white,
                    //elevation: 24.0,
                    title: const Center(
                      child: Text(
                        "A panic button has being created for you. Help is underway. Stay calm and expect help.Thank You!!",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    content: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "5",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Minutes",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(255, 4, 52, 91),
                          ),
                        )
                      ],
                    ),
                    actions: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MapPage(),
                                ),
                              );
                            },
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.location_searching,
                                  color: Color.fromARGB(255, 4, 52, 91),
                                ),
                                SizedBox(width: 2),
                                Text(
                                  "Trace Help",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 4, 52, 91),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 82,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 4, 52, 91),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: const Center(
                              child: Text(
                                "Check Log",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amberAccent,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  barrierDismissible: true,
                ),
              },
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 249, 21, 4),
                      borderRadius: BorderRadius.circular(123),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.3),
                    child: Container(
                      height: 230,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(123),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.notifications_active,
                          size: 80,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _callPrompt,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => {},
              style: const ButtonStyle(),
              child: const Text(
                "ACTIVATE EMERGENCY",
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: _callCenter,
        /*() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MapPage()),
          );
        },*/
        tooltip: 'Call',
        child: const Icon(
          Icons.call_rounded,
          color: Colors.red,
          size: 35,
        ),
      ),
    );
  }
}

/*Widget build(BuildContext context) {
  return AlertDialog(
    title: const Text("Help UnderWay"),
    content: const Icon(Icons.help),
    //elevation: 24.0,
    backgroundColor: Colors.white,
    actions: [
      ElevatedButton(
        onPressed: () => {},
        child: const Text("CLOSE"),
      ),
    ],
  );
}
*/